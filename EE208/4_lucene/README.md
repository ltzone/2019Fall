# EE208 Lab04 Lucene

## 功能简介

本项目实现了一个中文网页索引与检索系统，包含三个可运行的Python脚本，需要按照次序运行

- HtmltoDoc.py能够将当前目录下html文件夹中存储的网页文件进行解析，提取标题、文字等信息存储于docs文件夹下的同名文件中
- IndexFile.py是一个基于Lucene的搜索引擎索引建立文件。运行主函数后能够为docs文件夹中的中文分词结果建立索引，索引位于index文件夹中。此外，当前目录下要求有一个名为index.txt的网页目录，该目录文件可以通过Lab03中的爬虫生成。
- SearchFiles.py是一个搜索程序，执行该脚本后，用户可以输入带有AND/OR/NOT和关键词的Query，程序将根据Query返回最多50条index文件夹中匹配的记录，输入空白退出。

## 环境要求

本项目语言为Python 2.7，Python环境中需安装有urllib，urlparse，BeautifulSoup4，Lucene库。
本项目在Ubuntu 16.04中经过测试

## 使用方法

用户可以在命令行中运行，也可以直接在PyCharm等IDE中直接运行，需要注意配置好Python脚本所调用文件的路径。

```
$ python HtmltoDoc.py
```


## 辅助文件说明

**html**文件夹由于文件过大并未提交

**docs**文件夹是本实验中html文件经过分词处理得到的结果

**index**文件夹是本实验根据docs文件建立的索引

**index.txt**是html的网页目录，包含URL和文件名。


## 作者
上海交通大学电子信息与电气工程学院 F1803016 周李韬

## 鸣谢
该项目经过EE208张娅老师和助教的指导