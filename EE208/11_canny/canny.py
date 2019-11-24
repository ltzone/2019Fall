import cv2
import numpy
import math

img = cv2.imread("./img/1.jpg", cv2.IMREAD_COLOR)



def get_gray_scale_2(img):
    height = len(img)
    width = len(img[0])
    I = numpy.zeros((width, height), dtype=numpy.uint8)
    for i in range(height):
        for j in range(width):
            I[i][j] = img[i][j][0]*0.114+img[i][j][1]*0.587+img[i][j][2]*0.299
    return I

def get_gray_scale_1(img):
    height = len(img)
    width = len(img[0])
    I = numpy.zeros((width, height), dtype=numpy.uint8)
    for i in range(height):
        for j in range(width):
            I[i][j] = (img[i][j][0]+img[i][j][1]+img[i][j][2])/3
    return I


def get_Gaus_blur(img):
    return cv2.GaussianBlur(img, (3,3), 0)

def Sobel(img):
    height = len(img)
    width = len(img[0])
    p = numpy.zeros((width, height), dtype=int)
    q = numpy.zeros((width, height), dtype=int)
    g = numpy.zeros((width, height), dtype=int)
    t = numpy.zeros((width, height), dtype=float)
    for i in range(1, height - 1):
        for j in range(1, width - 1):
            p[i][j] = int((img[i + 1, j + 1] + 2 * img[i + 1, j] + img[i + 1, j - 1]) \
                      - (img[i - 1, j + 1] + 2 * img[i - 1, j] + img[i - 1, j - 1]))
            q[i][j] = int((img[i - 1, j - 1] + 2 * img[i , j-1] + img[i + 1, j - 1]) \
                      - (img[i - 1, j + 1] + 2 * img[i, j+1] + img[i + 1, j + 1]))
            g[i][j] = int(math.sqrt(p[i][j]*p[i][j]+q[i][j]*q[i][j]))
            if p[i][j] != 0:
                t[i][j] = math.atan(q[i][j]/p[i][j])
            else:
                t[i][j] = math.pi/2
    return p, q, g, t

def de_maximum(img):
    height = len(img)
    width = len(img[0])
    p, q, g, t = Sobel(img)
    res = g
    for i in range(1, height - 1):
        for j in range(1, width - 1):
            theta = t[i][j]
            ratio = math.tan(theta)
            if ratio>0:
                if ratio<=1:
                    dtmp1 = int(g[i+1][j]*(1-ratio) + ratio*g[i+1][j+1])
                    dtmp2 = int(g[i-1][j]*(1-ratio) + ratio*g[i-1][j-1])
                else:
                    dtmp1 = int(g[i][j+1]*(1-1/ratio) + 1/ratio*g[i-1][j+1])
                    dtmp2 = int(g[i][j-1]*(1-1/ratio) + 1/ratio*g[i+1][j-1])
            else:
                if ratio >=-1:
                    dtmp1 = int(g[i-1][j]*(1+ratio) - ratio*g[i-1][j+1])
                    dtmp2 = int(g[i+1][j]*(1+ratio) - ratio*g[i+1][j-1])
                else:
                    dtmp1 = int(g[i][j+1]*(1+1/ratio) - 1/ratio*g[i-1][j+1])
                    dtmp2 = int(g[i][j-1]*(1+1/ratio) - 1/ratio*g[i+1][j-1])
            if max(dtmp1,dtmp2,g[i][j]) != g[i][j]:
                res[i][j] = 0
    return res



def threshold(img,high,low):
    height = len(img)
    width = len(img[0])
    result = numpy.zeros((width, height), dtype=numpy.uint8)
    weakset = dict()

    for i in range(1, height - 1):
        for j in range(1, width - 1):
            if img[i][j] > high:
                result[i][j] = 255
            else:
                if img[i][j] > low:
                    weakset[(i,j)]=False

    for (i,j) in weakset.keys():
        strong_connected = False
        if weakset[(i,j)] == False:
            weakset[(i, j)] = True
            to_visit = [(i,j)]
            connected_component = [(i,j)]
            while to_visit:
                (k,p) = to_visit.pop()
                for x,y in [-1,0,1]:
                    if img[k+x,p+y]>high:
                        strong_connected = True
                    elif img[k+x,p+y]>low:
                        if weakset[(k+x,p+y)] == False:
                            weakset[(k+x,p+y)] =True
                            to_visit.append((k+x,p+y))
                            connected_component.append((k+x,p+y))
            if strong_connected:
                for (k,p) in connected_component:
                    result[k,p] = 255
    return result
'''
def strong_connected(img,high,i,j):
    for x in [-1,0,1]:
        for y in [-1,0,1]:
            if img[i+x][j+y]>high:
                return true
    return false
'''

c = de_maximum(get_Gaus_blur(get_gray_scale_2(img)))
c = cv2.convertScaleAbs(c)
c = threshold(c,50,100)

print (c)


cv2.namedWindow("Image")
cv2.imshow("Image", img)

cv2.namedWindow("Tmp Image")
cv2.imshow("Tmp Image",c)


canny_img = cv2.Canny(img,50,150)
cv2.namedWindow("Canny Image")
cv2.imshow("Canny Image",canny_img)
cv2.waitKey(0)
