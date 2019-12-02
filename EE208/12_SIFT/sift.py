import cv2
import numpy as np
import math

def get_grad(I, x, y):
    r = int(I[x+1, y])
    l = int(I[x-1, y])
    u = int(I[x, y + 1])
    d = int(I[x, y - 1])
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
    return int(result)

def SIFT_descripter(I,a,b):
    result = [0]*128
    t = get_main_dir_for_cp(I,a,b,3)
    for bx in range(4):
        for by in range(4):
            for i in range(4):
                for j in range(4):
                    x_r = (bx-2)*4+i
                    y_r = (by-2)*4+j
                    lgrad = get_theta_of(I,a+x_r*dcos(t)+y_r*dsin(t),b+x_r*dsin(t)+y_r*dcos(t))
                    result[(bx+by*4)*8+int((lgrad-t)/45)] += 1
    return result

def similarity(sift1,sift2):
    return math.sqrt(np.inner(sift1-sift2, sift1-sift2))



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
def get_cp_and_sifter(img,max_corner):
    corner_points = cv2.goodFeaturesToTrack(img, max_corner, 0.1, 10, blockSize=3, k=0.04)
    grads = list()
    cps = list()
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
    second = 0
    for i in range(len(list)):
        if list[i] < list[one]:
            second = one
            one = i
        elif list[i] < list[second]:
            second = i
    return one,second

def find_match(cps1,sifters1,cps2,sifters2):
    res = set()
    for i in range(len(cps1)):
        dists = list()
        for j in range(len(cps2)):
            dists.append(similarity(sifters1[i],sifters2[j]))
        one,second = find_min_and_second(dists)
        print (dists)
        if dists[one]/dists[second] < 0.9:
            res.add((cps1[i],cps2[one]))
    return res


img = read_pict("./dataset/3.jpg")
target = read_pict("./target.jpg")

cps1,sifter1 = get_cp_and_sifter(img,30)
cps2,sifter2 = get_cp_and_sifter(target,30)
res = find_match(cps1,sifter1,cps2,sifter2)

print(res)

img1 = cv2.imread("./dataset/3.jpg",cv2.IMREAD_COLOR)
img2 = cv2.imread("./target.jpg", cv2.IMREAD_COLOR)
'''
for (point1,point2) in res:
    cv2.circle(img1,point1,1,(0,0,255),4)
    cv2.circle(img2,point2,1,(0,0,255),4)
'''

for point1 in cps1:
    cv2.circle(img1,point1,1,(0,0,255),4)
for point2 in cps2:
    cv2.circle(img2,point2,1,(0,0,255),4)



cv2.imshow('img1', img1)
cv2.imshow('img2', img2)
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