# coding: utf-8
import urllib2, cookielib, urllib
cj = cookielib.CookieJar()	#初始化cookie
opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
urllib2.install_opener(opener)	#将cookie加入opener
postdata = urllib.urlencode({	#根据发出数据模拟request-body
    'id' : 'ltzhou',
    'pw' : 'rury8p',
    'submit' : 'login'
})
req = urllib2.Request(url = 'https://bbs.sjtu.edu.cn/bbslogin', data = postdata)
response = urllib2.urlopen(req) 	#POST方式发出请求
response = urllib2.urlopen('https://bbs.sjtu.edu.cn/bbsleftnew')	#打开BBS欢迎页，查看ID是否显示在欢迎页中。
print 'ltzhou' in response.read()	#True则成功
