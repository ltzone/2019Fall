import cv2
import numpy as np
import math





def grad(I,x,y):
    laplace = np.array([[1,1,1],[1,-8,1],[1,1,1]])
    gx = cv2.filter2D(I,-1,laplace)
    gy = cv2.filter2D(I,-1,laplace)
    return gx,gy


def get_grad(I, x, y):
    '''
    try:

        u = int(I[x+1, y])
        d = int(I[x-1, y])
        r = int(I[x, y + 1])
        l = int(I[x, y - 1])
        m = math.sqrt((l-r)*(l-r)+(u-d)*(u-d))
        '''
    gx,gy = grad(I,x,y)
    m = math.sqrt(gx[x][y]**2+gy[x][y]**2)
    if gy[x][y]>0:
        agl = int(math.atan(gx[x][y]/gy[x][y])/math.pi*180)
    elif gy[x][y]<0:
        agl = 180+int(math.atan(gx[x][y]/gy[x][y])/math.pi*180)
    else:
        agl = 90
    if agl<0:
        agl += 360
    return m, agl
    #except:
     #   return 0, 0
'''
        if r>l:
            agl = int(math.atan((u-d)/(l-r))/math.pi*180)
        elif r<l:
            agl = 180+int(math.atan((u-d)/(l-r))/math.pi*180)
        else:
            agl = 90
        if agl<0:
            agl += 360
        return m, agl
    except:
        return 0, 0
'''

def vote_for_grad(grads):
    voter = [0]*36
    for (g,t) in grads:
        voter[math.floor(t/10)] += g
    return 5+voter.index(max(voter))*10

def get_main_dir_for_cp(I,a,b,r):
    grads = list()
    for i in range(a-r,a+r+1):
        for j in range(b-r,b+r+1):
            grads.append(get_grad(I,i,j))
    return vote_for_grad(grads)

def get_rotate(grads,rotate):
    result = grads[:]
    cnt = 0
    for (g,t) in grads:
        result[cnt] = (g,t-rotate)
        cnt += 1
    return result

def dsin(x):
    return math.sin(math.radians(x))

def dcos(x):
    return math.cos(math.radians(x))


def get_theta_of(I,a,b):
    dx1 = a - math.floor(a)
    dx2 = 1 - dx1
    dy1 = b - math.floor(b)
    dy2 = 1 - dy1
    a = math.floor(a)
    b = math.floor(b)
    result = get_grad(I,a,b)[1]*dx2*dy2 + \
             get_grad(I,a+1,b)[1]*dx1*dy2 + \
             get_grad(I,a,b+1)[1]*dx2*dy1 + \
             get_grad(I,a+1,b+1)[1]*dx1*dy1
    return result

def get_grad_of(I,a,b):
    dx1 = a - math.floor(a)
    dx2 = 1 - dx1
    dy1 = b - math.floor(b)
    dy2 = 1 - dy1
    a = math.floor(a)
    b = math.floor(b)
    result = get_grad(I,a,b)[0]*dx2*dy2 + \
             get_grad(I,a+1,b)[0]*dx1*dy2 + \
             get_grad(I,a,b+1)[0]*dx2*dy1 + \
             get_grad(I,a+1,b+1)[0]*dx1*dy1
    return result


'''
def get_theta_of(I,a,b):
    return get_grad(I,round(a),round(b))[1]
'''

def SIFT_descripter(I,a,b):
    result = [0]*128
    maindirr = ((I.shape[0] + I.shape[1]) // 80)
    t = get_main_dir_for_cp(I,a,b,maindirr)
    blsize = 4
    for bx in range(blsize):
        for by in range(blsize):
            for i in range(blsize):
                for j in range(blsize):
                    try:
                        x_r = (bx-2)*4+i
                        y_r = (by-2)*4+j
                        ltheta = get_theta_of(I, a + x_r * dcos(t) - y_r * dsin(t), b + x_r * dsin(t) + y_r * dcos(t))
                        lgrad = get_grad_of(I, a + x_r * dcos(t) - y_r * dsin(t), b + x_r * dsin(t) + y_r * dcos(t)) \
                                * math.exp(-(x_r**2+y_r**2)/2)
                        #lgrad = get_theta_of(I,a+x_r*dcos(t)+y_r*dsin(t),b+x_r*dsin(t)+y_r*dcos(t))
                        result[(bx+by*blsize)*8+int(((ltheta+t)%360)/45)] += lgrad
                    except IndexError:
                        pass
    return result

def similarity(sift1,sift2):
    #return math.sqrt(np.inner(sift1-sift2, sift1-sift2))
    return np.inner(sift1,sift2)

def get_cp_and_sifter(img,max_corner):
    corner_points = cv2.goodFeaturesToTrack(img, max_corner, 0.01, 10, blockSize=3, k=0.04)
    grads = list()
    cps = list()

    img = cv2.GaussianBlur(img, (5, 5), 1,1)
    for [[i, j]] in corner_points:
        i = int(i)
        j = int(j)
        cps.append((i, j))
    sifters = list()
    for (a, b) in cps:
        tmp = np.array(SIFT_descripter(img, a, b), dtype=float)
        norm = math.sqrt(np.inner(tmp, tmp))
        if norm != 0:
            tmp /= norm
        sifters.append(((a,b),tmp))
    return sifters

def read_pict(src):
    img = cv2.imread(src, cv2.IMREAD_COLOR)
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    img = np.float32(img)
    return img

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

def by_value(t):
    return (-t[2])

def find_match(sifters1,sifters2):
    res = set()
    dists = list()
    for (k1,s1) in (sifters1):
        for (k2,s2) in (sifters2):
            dists.append((k1,k2,similarity(s1,s2)))
    print (dists)
    dist_sorted = sorted(dists,key=by_value)
    print (dist_sorted)
    popedx = list()
    popedy = list()
    cnt = 0
    for (k1,k2,v) in dist_sorted:
        if (k1 not in popedx) and (k2 not in popedy):
            print (k1,k2,v)
            res.add((k1,k2))
            popedx.append(k1)
            popedy.append(k2)
            cnt += 1
        if v < 0.9 or cnt > 10:
            break
        '''
        print(dists)
        goal = dists.index(min(dists))
        if min(dists)<0.3:
            res.add((cps1[i],cps2[goal]))
       
        one,second = find_min_and_second(dists)
        print (dists)
        try:
            if dists[one]/dists[second] < 0.9:
                res.add((cps1[i],cps2[one]))
        except ZeroDivisionError:
            res.add((cps1[i],cps2[one]))
            break
        '''
    return res


img = read_pict("./dataset/3.jpg")
#img = read_pict("./target.jpg")
target = read_pict("./target.jpg")



n = 10

sifter1 = get_cp_and_sifter(img,n)
sifter2 = get_cp_and_sifter(target,n)

res = find_match(sifter1,sifter2)

print(res)

img1 = cv2.imread("./dataset/3.jpg",cv2.IMREAD_COLOR)
#img1 = cv2.imread("./target.jpg", cv2.IMREAD_COLOR)
img2 = cv2.imread("./target.jpg", cv2.IMREAD_COLOR)


output =  np.zeros((400,400), np.uint8)


kp1 = [cv2.KeyPoint(x,y,1) for ((x,y),j) in res]
kp2 = [cv2.KeyPoint(x,y,1) for (i,(x,y)) in res]
matches = [cv2.DMatch(i,i,0.1) for i in range(len(res))]
result = cv2.drawMatches(img1,kp1,img2,kp2,matches,output)
''''
cv2.imshow('img1', img1)
cv2.imshow('img2', img2)
'''
print (n)
cv2.imshow('img',result)
cv2.waitKey()







'''
I = np.zeros((height,width), dtype=np.uint8)

for i in range(height):
    for j in range(width):
        if dst[i][j]>0.01*dst.max():
            I[i][j]= 255

print (dst)
cv2.imshow('dst',I)
cv2.waitKey(0)
'''



'''
img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
img = np.float32(img)
#dst = cv2.cornerHarris(img, 2, 3, 0.1)

max_corner = 10
corner_points = cv2.goodFeaturesToTrack(img,max_corner,0.1,10,blockSize=3,k=0.04)

grads = list()
cps = list()
for [[i,j]] in corner_points:
    i = int(i)
    j = int(j)
    grads.append(get_grad(img,i,j))
    cps.append((i,j))

sifters = list()
for (a,b) in cps:
    tmp = np.array(SIFT_descripter(img,a,b),dtype=float)
    norm = math.sqrt(np.inner(tmp,tmp))
    tmp /= norm
    sifters.append(tmp)
'''

'''
for (point1,point2) in res:
    cv2.circle(img1,point1,1,(0,0,255),4)
    cv2.circle(img2,point2,1,(0,0,255),4)
    cv2.imshow('img1', img1)
    cv2.imshow('img2', img2)
    cv2.waitKey()

for point1 in cps1:
    cv2.circle(img1,point1,1,(0,0,255),4)
for point2 in cps2:
    cv2.circle(img2,point2,1,(0,0,255),4)
'''