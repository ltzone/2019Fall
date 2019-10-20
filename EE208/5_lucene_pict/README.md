# EE208 Lab05 Lucene

## 功能简介

本项目分为两部分，第一部分是一个支持site域名限定的搜索引擎，第二部分是豆瓣电影的图片搜索引擎。

第一部分中包含以下需要依次执行的脚本

- UpdateFile.py是一个基于Lucene的搜索引擎索引更新文件。运行主函数后能够为docs文件夹中的中文分词结果建立一个包含文件域名的索引，索引位于index文件夹中。此外，当前目录下要求有一个名为index.txt的网页目录，该目录文件可以通过Lab03中的爬虫生成。在执行该脚本的过程中，原有index文件夹内文件名相同的文档索引将会被覆盖。
- BoolSearchFiles.py是一个搜索程序，执行该脚本后，用户可以输入带有AND/OR/NOT、关键词和site:...的Query，程序将根据Query返回最多50条index文件夹中匹配的记录，输入空白退出。

第二部分中包含以下需要依次执行的脚本

- crawler_thread_join.py能够爬取豆瓣电影网站中的页面，修改max_page可以更改最大爬取的页面数，爬取结果将存储于html文件夹，爬取文件目录将被存储与index.txt中。
- PagetoDocs.py将根据按照index.txt中的目录，在html文件夹中的网页中，提取电影的主题页和名人的主题页中的图片，将图片地址、周边文字输出到docs文件夹中。同时生成一个docindex文件，包含成功被解析的页面目录。
- IndexFiles.py将根据docindex文件，为docs文件夹的图片提取信息建立索引。索引位于index文件夹中。
- SearchFiles.py是一个搜索程序，执行该脚本后，用户可以输入带有AND/OR/NOT和关键词的Query，程序将根据Query返回最多50条index文件夹中匹配的图片记录，输入空白退出。

## 环境要求

本项目语言为Python 2.7，Python环境中需安装有urllib，urlparse，BeautifulSoup4，Lucene库。
本项目在Ubuntu 16.04中经过测试

## 使用方法

用户可以在命令行中运行，也可以直接在PyCharm等IDE中直接运行，需要注意配置好Python脚本所调用文件的路径。

```
$ python Update.py
```


## 辅助文件说明

**html**文件夹由于文件过大并未提交

**docs**文件夹是本实验中提取的图片信息结果

**index**文件夹是本实验根据docs文件建立的索引

**index.txt**是html的网页目录，包含URL和文件名。

**docindex**是docs的文件目录，包含成功提取图片文件的文件名。

**Bitarray.py**是爬虫需要用到的BloomFilter辅助文件。

## 作者
上海交通大学电子信息与电气工程学院 F1803016 周李韬

## 鸣谢
该项目经过EE208张娅老师和助教的指导