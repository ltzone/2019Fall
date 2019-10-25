# coding: utf-8
import urllib2, cookielib, urllib, json
cj = cookielib.CookieJar()	#初始化cookie
opener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cj))
urllib2.install_opener(opener)	#将cookie加入opener
postdata = urllib.urlencode({"un":"tonyzhou0608@163.com",
                             "pw":"pXH6/+ODGjzDOvYhgNu3hT88Xt0oHNzxmAJ/5fRIvAKaTzWCtK3NuvjGm1n1UzrQgenxikNIIcoBWFrxB4AWhivqcYQ9sgPTf66ULMhU5ivMCQ/SpsBAIJc6bKp7OBNeW6/NSIGBsNXxYoYGxqOeQro+GeBUju8PVKn4wUcwhBc=",
                             "pd":"lofter",
                             "l":1,"d":10,"t":1571400532626,
                             "pkid":"YlfTAjw","domains":"",
                             "tk":"202191b296be801150ec70c6f8719f12",
                             "pwdKeyUp":1,"channel":0,
                             "topURL":"http://www.lofter.com/login?urschecked=true",
                             "rtid":"f2qoKC6E0Sa1wUOpsK3TeoS6O9ZiwyOW"})
req = urllib2.Request(url = 'https://passport.www.lofter.com/dl/l', data = json.dumps(postdata))
req.add_header('User-Agent','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:69.0) Gecko/20100101 Firefox/69.0')

response = urllib2.urlopen(req) 	#POST方式发出请求
response = urllib2.urlopen('http://www.lofter.com/login?urschecked=true')	#打开BBS欢迎页，查看ID是否显示在欢迎页中。
f = open('write.txt','w')
f.write(response.read())
f.close()
