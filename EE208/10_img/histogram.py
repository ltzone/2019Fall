import cv2
import math




def get_color_histogram(output_file,image_dir):
    f = open(output_file,'w')
    img = cv2.imread(image_dir, cv2.IMREAD_COLOR)

    EB = 0
    EG = 0
    ER = 0

    for rows in img:
        for i in rows:
            EB += i[0]
            EG += i[1]
            ER += i[2]

    E = EB + EG + ER

    f.write('EB: '+ str(EB / E) +'\n')
    f.write('EG: '+ str(EG / E) +'\n')
    f.write('ER: '+ str(ER / E) +'\n')

    f.close()

def get_grey_histogram(output_file,image_dir):
    f = open(output_file,'w')
    img = cv2.imread(image_dir, cv2.IMREAD_GRAYSCALE)
    height = len(img)
    width = len(img[0])
    size = height * width

    N_table = [0] * 256
    for rows in img:
        for i in rows:
            N_table[i] += 1
    for i in range(256):
        f.write(str(N_table[i]/size) +'\n')

    f.close()


def get_grey_gradient(output_file,image_dir):
    f = open(output_file,'w')
    img = cv2.imread(image_dir, cv2.IMREAD_GRAYSCALE)
    height = len(img)
    width = len(img[0])

    M_table = [0]*361
    for i in range(1,height-1):
        for j in range(1,width-1):
            b_i = int(img[i+1][j])-int(img[i-1][j])
            b_j = int(img[i][j+1])-int(img[i][j-1])
            m = int(math.sqrt(b_i*b_i+b_j*b_j))
            M_table[m] += 1

    grad_size = (width-2)*(height-2)
    for idx in range(361):
        f.write(str(M_table[idx]/ grad_size)+'\n')
    f.close()


if __name__ == '__main__':
    get_color_histogram("./result/1_1.txt","./images/img1.png")
    get_grey_histogram("./result/1_2.txt","./images/img1.png")
    get_grey_gradient("./result/1_3.txt","./images/img1.png")
    get_color_histogram("./result/2_1.txt","./images/img2.png")
    get_grey_histogram("./result/2_2.txt","./images/img2.png")
    get_grey_gradient("./result/2_3.txt","./images/img2.png")


'''
cv2.namedWindow("Image")
cv2.imshow("Image",img)
cv2.waitKey(0)
'''