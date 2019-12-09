import cv2
import numpy as np
import math

def dsin(x):
    return math.sin(math.radians(x))

def dcos(x):
    return math.cos(math.radians(x))

def similarity(sift1,sift2):
    return math.sqrt(np.inner(sift1-sift2, sift1-sift2))
    #return np.inner(sift1,sift2)

def by_value(t):
    return (-t[2])

def find_min_and_second(list):
    one = 0
    second = 1
    if (list[0] > list[1]):
        one = 1
        second = 0
    for i in range(1,len(list)):
        if list[i] < list[one]:
            second = one
            one = i
        elif list[i] < list[second]:
            second = i
    return one,second

class siftIMG:
    def __init__(self,src):
        img = cv2.imread(src, cv2.IMREAD_COLOR)
        img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
        self.orgimg = cv2.imread(src, cv2.IMREAD_COLOR)
        self.img = np.float32(img)

        krn1 = np.array([[-1,0,1],[-2,0,2],[-1,0,1]],dtype=np.float32)
        krn2 = np.array([[-1, -2, -1], [0, 0, 0], [1, 2, 1]],dtype=np.float32)


        #img = cv2.GaussianBlur(img, (5, 5), 1, 1)


        # calculate gradient
        laplace = np.array([[1, 1, 1], [1, -8, 1], [1, 1, 1]])
        gx = cv2.filter2D(self.img, -1,krn2)
        gy = cv2.filter2D(self.img, -1, krn1)
        self.gx = gx
        self.gy = gy

        self.height = img.shape[0]
        self.width = img.shape[1]
        self.grad = np.zeros((self.height, self.width), float)
        self.theta = np.zeros((self.height, self.width), int)
        for x in range(1,self.height-1):
            for y in range(1,self.width-1):
                self.grad[x][y] = math.sqrt(gx[x][y] ** 2 + gy[x][y] ** 2)
                self.theta[x][y] = math.atan2(gy[x][y],gx[x][y])/math.pi * 180



    def extract_cps(self,max_corner, block_size=3):
        self.cps = cv2.goodFeaturesToTrack(self.img,max_corner,0.01,10,blockSize=block_size,k=0.04)

    def calculate_main_dir(self,a,b,r):
        grads = list()
        for i in range(a-r,a+r+1):
            for j in range(b-r,b+r+1):
                try:
                    grads.append((self.grad[i][j],self.theta[i][j]))
                except IndexError:
                    grads.append((0,0))
        return self.vote_for_grad(grads)

    def vote_for_grad(self,grads):
        voter = [0]*36
        for (g,t) in grads:
            voter[math.floor(t/10)] += g
        return 5+voter.index(max(voter))*10

    def get_theta_of(self, a, b):
        dx1 = a - math.floor(a)
        dx2 = 1 - dx1
        dy1 = b - math.floor(b)
        dy2 = 1 - dy1
        a = math.floor(a)
        b = math.floor(b)
        result = self.theta[a][b] * dx2 * dy2 + \
                 self.theta[a+1][b] * dx1 * dy2 + \
                 self.theta[a][b+1] * dx2 * dy1 + \
                 self.theta[a+1][b+1] * dx1 * dy1
        return result

    def get_grad_of(self,  a, b):
        dx1 = a - math.floor(a)
        dx2 = 1 - dx1
        dy1 = b - math.floor(b)
        dy2 = 1 - dy1
        a = math.floor(a)
        b = math.floor(b)
        result = self.grad[a][b] * dx2 * dy2 + \
                 self.grad[a+1][b] * dx1 * dy2 + \
                 self.grad[a][b+1] * dx2 * dy1 + \
                 self.grad[a+1][b+1] * dx1 * dy1
        return result


    def SIFT_descripter(self, a, b):
        result = [0] * 128
        maindirr = ((self.height + self.width) // 80)
        t = self.calculate_main_dir(a, b, maindirr)
        blsize = 10
        for bx in range(blsize):
            for by in range(blsize):
                for i in range(blsize):
                    for j in range(blsize):
                        try:
                            x_r = (bx - 2) * 4 + i
                            y_r = (by - 2) * 4 + j
                            ltheta = self.get_theta_of(a + x_r * dcos(t) - y_r * dsin(t),
                                                  b + x_r * dsin(t) + y_r * dcos(t))
                           #  lgrad = self.get_grad_of(a + x_r * dcos(t) - y_r * dsin(t), b + x_r * dsin(t) + y_r * dcos(t)) \
                             #       * math.exp(-(x_r ** 2 + y_r ** 2) / 2)
                            # lgrad = get_theta_of(I,a+x_r*dcos(t)+y_r*dsin(t),b+x_r*dsin(t)+y_r*dcos(t))
                            result[(bx + by * blsize) * 8 + int(((ltheta + t) % 360) / 45)] += 1
                        except IndexError:
                            pass
        return result

    def get_cps_and_sifter(self,max_corner):
        self.extract_cps(max_corner)

        sifters = list()
        for [[a, b]] in self.cps:
            tmp = np.array(self.SIFT_descripter(int(a), int(b)), dtype=float)
            norm = math.sqrt(np.inner(tmp, tmp))
            if norm != 0:
                tmp /= norm
                sifters.append(((int(a), int(b)), tmp))
        return sifters

def find_match2(siftimg1,siftimg2,n):
    sifters1 = siftimg1.get_cps_and_sifter(n)
    sifters2 = siftimg2.get_cps_and_sifter(n)
    res = set()
    for (k1, s1) in (sifters1):
        dists = list()
        for (k2, s2) in (sifters2):
            dists.append((k1, k2, similarity(s1, s2)))

        one, second = find_min_and_second([i[2] for i in dists])
        #print(dists)
        try:
            if (dists[one][2]/dists[second][2]) < 0.9:
                res.add((dists[one][0], dists[one][1]))
        except ZeroDivisionError:
            continue
    return res

'''
    print(dists)
    dist_sorted = sorted(dists, key=by_value)
    print(dist_sorted)
    popedx = list()
    popedy = list()
    cnt = 0
    for (k1, k2, v) in dist_sorted:
        if (k1 not in popedx) and (k2 not in popedy):
            print(k1, k2, v)
            res.add((k1, k2))
            popedx.append(k1)
            popedy.append(k2)
            cnt += 1
        if v < 0.9 or cnt > 10:
            break
'''



def find_match(siftimg1,siftimg2,n):
    sifters1 = siftimg1.get_cps_and_sifter(n)
    sifters2 = siftimg2.get_cps_and_sifter(n)
    res = set()
    dists = list()
    for (k1, s1) in (sifters1):
        for (k2, s2) in (sifters2):
            dists.append((k1, k2, similarity(s1, s2)))
    print(dists)
    dist_sorted = sorted(dists, key=by_value)
    print(dist_sorted)
    popedx = list()
    popedy = list()
    cnt = 0
    for (k1, k2, v) in dist_sorted:
        if (k1 not in popedx) and (k2 not in popedy):
            print(k1, k2, v)
            res.add((k1, k2))
            popedx.append(k1)
            popedy.append(k2)
            cnt += 1
        if v < 0.9 or cnt > 5:
            break
    return res





img1 = siftIMG("./dataset/5.jpg")
img2 = siftIMG("./target2.jpg")
output = np.zeros((400,400), np.uint8)

n = 200

res = find_match(img1,img2,n)

kp1 = [cv2.KeyPoint(x,y,1) for ((x,y),j) in res]
kp2 = [cv2.KeyPoint(x,y,1) for (i,(x,y)) in res]
matches = [cv2.DMatch(i,i,0) for i in range(len(res))]
result = cv2.drawMatches(img1.orgimg,kp1,img2.orgimg,kp2,matches,output)

print (n)
cv2.imshow('img',result)
cv2.waitKey()