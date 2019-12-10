import cv2
import numpy as np
import math

def Lsize(I,d):
    result = list()
    tmp = I
    for k in range(1,5):
        now = cv2.GaussianBlur(I, (d*k, d*k), 0)
        result.append(now-tmp)
    return result

def is_max(Dspace,k,y,x):
    t = Dspace[k][y][x]
    for i in [-1,0,1]:
        for j in [-1,0,1]:
            for p in [-1,0,1]:
                if Dspace[k+i][y+j][x+p] > t:
                    return false
    return true

def is_min(Dspace,k,y,x):
    t = Dspace[k][y][x]
    for i in [-1,0,1]:
        for j in [-1,0,1]:
            for p in [-1,0,1]:
                if Dspace[k+i][y+j][x+p] < t:
                    return false
    return true

def is_ext(Dspace,k,y,x):
    return is_max(Dspace,k,y,x) or is_min(Dspace,k,y,x)

def extract_ext(Dspace):
    result = set()
    height = len(Dspace[0])
    width = len(Dspace[0][0])
    for k in range(1,4):
        for y in range(1,height-1):
            for x in range(1,width-1):
                if is_ext(Dspace,k,y,x):
                    result.add((k,y,x))
    return result

def de_ext(Dspace,result):
    laplace = np.array([[0,1,0],[1,-4,1],[0,1,0]])







def get_grad(I, x, y):
    try:
        u = int(I[x+1, y])
        d = int(I[x-1, y])
        r = int(I[x, y + 1])
        l = int(I[x, y - 1])
        m = math.sqrt((l-r)*(l-r)+(u-d)*(u-d))
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

def vote_for_grad(grads):
    voter = [0]*36
    for (g,t) in grads:
        voter[math.floor(t/10)] += 1
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
'''
def get_theta_of(I,a,b):
    return get_grad(I,round(a),round(b))[1]
'''

def SIFT_descripter(I,a,b):
    result = [0]*128
    t = get_main_dir_for_cp(I,a,b,5)
    blsize = 4
    for bx in range(blsize):
        for by in range(blsize):
            for i in range(blsize):
                for j in range(blsize):
                    try:
                        x_r = (bx-2)*4+i
                        y_r = (by-2)*4+j
                        lgrad = get_theta_of(I, a + x_r * dcos(t) - y_r * dsin(t), b + x_r * dsin(t) + y_r * dcos(t))
                        #lgrad = get_theta_of(I,a+x_r*dcos(t)+y_r*dsin(t),b+x_r*dsin(t)+y_r*dcos(t))
                        result[(bx+by*blsize)*8+int(((lgrad+t)%360)/45)] += 1
                    except IndexError:
                        pass
    print (result)


    return result

def similarity(sift1,sift2):
    return math.sqrt(np.inner(sift1-sift2, sift1-sift2))
    # return np.inner(sift1,sift2)

def get_cp_and_sifter(img,max_corner):
    corner_points = cv2.goodFeaturesToTrack(img, max_corner, 0.01, 15, blockSize=3, k=0.04)
    grads = list()
    cps = list()
    img = cv2.GaussianBlur(img, (3, 3), 0)
    for [[i, j]] in corner_points:
        i = int(i)
        j = int(j)
        cps.append((i, j))
    sifters = list()
    for (a, b) in cps:
        tmp = np.array(SIFT_descripter(img, a, b), dtype=float)
        norm = math.sqrt(np.inner(tmp, tmp))
        tmp /= norm
        sifters.append(tmp)
    return cps,sifters

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
    return (t[2])

def find_match(cps1,sifters1,cps2,sifters2):
    res = set()
    dists = list()
    for i in range(len(cps1)):
        for j in range(len(cps2)):
            dists.append((i,j,similarity(sifters1[i],sifters2[j])))

    dist_sorted = sorted(dists,key=by_value)
    print (dist_sorted)
    popedx = list()
    popedy = list()
    for (i,j,v) in dist_sorted:
        if v == 0:
            continue
        if v > 0.5:
            break
        if (i not in popedx) and (j not in popedy):
            res.add((cps1[i],cps2[j]))
            popedx.append(i)
            popedy.append(j)

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


img = read_pict("./dataset/1.jpg")
#img = read_pict("./target.jpg")
target = read_pict("./target4.jpg")

'''

for n in range(2,10,2):


    cps1,sifter1 = get_cp_and_sifter(img,n)
    cps2,sifter2 = get_cp_and_sifter(target,n)
    res = find_match(cps1,sifter1,cps2,sifter2)

    print(res)

    img1 = cv2.imread("./dataset/2.jpg",cv2.IMREAD_COLOR)
    #img1 = cv2.imread("./target.jpg", cv2.IMREAD_COLOR)
    img2 = cv2.imread("./target5.jpg", cv2.IMREAD_COLOR)


    output =  np.zeros((400,400), np.uint8)


    kp1 = [cv2.KeyPoint(x,y,1) for ((x,y),j) in res]
    kp2 = [cv2.KeyPoint(x,y,1) for (i,(x,y)) in res]
    matches = [cv2.DMatch(i,i,0.1) for i in range(len(res))]
    result = cv2.drawMatches(img1,kp1,img2,kp2,matches,output)
    
    cv2.imshow('img1', img1)
    cv2.imshow('img2', img2)

    print (n)
    cv2.imshow('img',result)
    cv2.waitKey()


'''
for n in range(30,50,2):


    cps1,sifter1 = get_cp_and_sifter(img,n)
    cps2,sifter2 = get_cp_and_sifter(target,n)

    res = find_match(cps1,sifter1,cps2,sifter2)

    print(res)

    img1 = cv2.imread("./dataset/1.jpg",cv2.IMREAD_COLOR)
    #img1 = cv2.imread("./target.jpg", cv2.IMREAD_COLOR)
    img2 = cv2.imread("./target4.jpg", cv2.IMREAD_COLOR)


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