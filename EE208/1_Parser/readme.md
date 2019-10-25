# EE208 Lab01 Parser

## 功能简介

本项目包含三个Python脚本

- URL.py中，parseURL()能够提取页面上所有的URL；
- IMG.py中，parseIMG()能够提取页面上所有的图片地址；
- Zhihu.py中，parseZhihuPic()能够将知乎日报实时的栏目图片、地址、文字按序打印。

## 环境要求

本项目语言为Python 2.7，Python环境中需安装有urllib，urlparse，BeautifulSoup4库。
本项目在Ubuntu 16.04，Windows 10中经过测试。

## 使用方法

用户可以修改Python脚本中url的值，直接运行脚本抓取URL对应页面的信息。也可以在命令行中将URL作为参数使用该脚本。注意：请输入完整的URL。

```
$ python URL.py http://...
$ python IMG.py http://...
$ python Zhihu.py
```

## 作者
上海交通大学电子信息与电气工程学院 F1803016 周李韬

## 鸣谢
该项目经过EE208张娅老师和助教的指导