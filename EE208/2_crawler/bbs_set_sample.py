# -*- coding:utf-8 -*-
import urllib2, cookielib, urllib
from bs4 import BeautifulSoup
import sys

def bbs_init_cookie():
    cj = cookielib.CookieJar()  # 初始化cookie
    opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
    urllib2.install_opener(opener)  # 将cookie加入opener

def bbs_login(id, pw):
    postdata = urllib.urlencode({  # 根据发出数据模拟request-body
        'id': id,
        'pw': pw,
        'submit': 'login'
    })
    req = urllib2.Request(url='https://bbs.sjtu.edu.cn/bbslogin', data=postdata)
    response = urllib2.urlopen(req)  # POST方式发出请求
    response = urllib2.urlopen('https://bbs.sjtu.edu.cn/bbsleftnew')  # 打开BBS欢迎页，查看ID是否显示在欢迎页中。
    return id in response.read()  # True则成功


def bbs_set(id, pw, text):
    bbs_init_cookie()
    print bbs_login(id, pw)
    '''
    content = urllib2.urlopen('https://bbs.sjtu.edu.cn/bbsplan').read()
    soup = BeautifulSoup(content)
    print str(soup.find('textarea').string).strip().decode('utf8')
    '''

if __name__ == '__main__':
	
    id = sys.argv[1]
    pw = sys.argv[2]
    text = sys.argv[3].decode('utf-8').encode('gbk')

    bbs_set(id, pw, text)
