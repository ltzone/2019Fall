import cv2
import numpy as np
import math
'''
filename = 'chessboard.png'
img = cv2.imread(filename)
gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
gray = np.float32(gray)
dst = cv2.cornerHarris(gray,2,3,0.04)
#result is dilated for marking the corners, not important
dst = cv2.dilate(dst,None)
# Threshold for an optimal value, it may vary depending on the image.
img[dst>0.01*dst.max()]=[0,0,255]
cv2.imshow('dst',img)
if cv2.waitKey(0) & 0xff == 27:
    cv2.destroyAllWindows()
'''


target = cv2.imread("./target.jpg", cv2.IMREAD_COLOR)

img = cv2.imread("./dataset/3.jpg", cv2.IMREAD_COLOR)
width = len(img[0])
height = len(img)

img = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
img = np.float32(img)
#dst = cv2.cornerHarris(img, 2, 3, 0.1)

max_corner = 10
corner_points = cv2.goodFeaturesToTrack(img,max_corner,0.1,10,blockSize=3,k=0.04)

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


grads = list()
cps = list()
for [[i,j]] in corner_points:
    i = int(i)
    j = int(j)
    grads.append(get_grad(img,i,j))
    cps.append((i,j))

(a,b) = cps[0]
print (SIFT_descripter(img,a,b))



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