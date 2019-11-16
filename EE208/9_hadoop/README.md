# EE208 Lab09 Hadoop Streaming

## 功能简介

本项目包含两部分，平均词长统计和PageRank计算

## 环境要求

本项目在Ubuntu 16.04中经过测试，需要安装Hadoop 2.7.4和jdk8.

## 使用方法

在将输入文件拷贝到Hadoop文件系统后，运行文件夹内的batch.sh文件，即可运行对应的map-reduce函数。

## 辅助文件说明

### Wordcount

**pg4300.txt**是测试输入文件。

**output.txt**是测试输出文件。

### PageRank

**output**文件夹中包含了每一次迭代的结果和中间值。

**graph.txt**文件是测试输入的图结构

**inputrank.txt**文件是测试时输入的初始PageRank值


## 作者
上海交通大学电子信息与电气工程学院 F1803016 周李韬

## 鸣谢
该项目经过EE208何大治老师和助教的指导