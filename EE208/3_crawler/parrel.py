# -*- coding: gbk -*-
from threading import Thread
from Queue import Queue
import time

#q是任务队列
#NUM是并发线程总数
#JOBS是有多少任务
q = Queue()
NUM = 2
JOBS = 10
#具体的处理函数，负责处理单个任务
def do_something_using(arguments):
    time.sleep(1)
    print arguments
    
#这个是工作进程，负责不断从队列取数据并处理
def working():
    while True:
        arguments = q.get()
        do_something_using(arguments)
        q.task_done()


#fork NUM个线程等待队列
for i in range(NUM):
    t = Thread(target=working)
    t.setDaemon(True)
    t.start()
#把JOBS排入队列
for i in range(JOBS):
    q.put(i)
#阻塞，等待所有JOBS完成
q.join()
