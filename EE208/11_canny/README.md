# EE208 Lab10 Histogram

## 功能简介

本项目包含一个Python脚本，能够实现图像的边缘CANNY算法检测

## 环境要求

本项目在Windows中Python 3.7环境经过测试，需要安装OpenCV.

## 使用方法

histogram.py中的调用方法如下。

    % 图像预处理
	img = cv2.imread("./img/3.jpg", cv2.IMREAD_GRAYSCALE)
	c = get_Gaus_blur(img)
	% 求解梯度，非极大值抑制，可通过修改de_maximum函数中的算子来实现不同算子的梯度求解
	c = de_maximum(c)
	% 双阈值边缘检测
	c = threshold(c,lowbound,upbound)

## 作者
上海交通大学电子信息与电气工程学院 F1803016 周李韬

## 鸣谢
该项目经过EE208何大治老师和助教的指导