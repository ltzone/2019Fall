# coding: utf-8


'''
import urllib2
import urllib
from bs4 import BeautifulSoup

response = urllib2.urlopen('http://www.baidu.com/')
content = response.read()
postdata = urllib.urlencode({'wd':'aaa'})
url = 'http://www.baidu.com/s?%s' % postdata
res = urllib2.urlopen(url)
html = res.read()
res.close()
html = str(html).decode('utf8','ignore')
soup = BeautifulSoup(html,features="html.parser")
print str(soup.title).decode('utf8')
'''

import urllib2
import urllib
postdata = urllib.urlencode({'wd':'上海'})#name和value以URL Encoding处理，注意对中文的处理。
url = 'http://www.baidu.com/s?%s' % postdata#将表单数据和目标地址以?连接。
res = urllib2.urlopen(url)
html = res.read()
res.close()
html = str(html).decode('utf8','ignore')
from bs4 import BeautifulSoup
soup = BeautifulSoup(html)
print str(soup.title).decode('utf8')#查看网页标题