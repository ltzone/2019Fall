import sys
import urllib2
import re
from bs4 import BeautifulSoup

url = 'http://www.baidu.com'
# url = 'http://www.sjtu.edu.cn'
if len(sys.argv) > 1:
    url = sys.argv[1]
content = urllib2.urlopen(url).read()
soup = BeautifulSoup(content,features='html.parser')
print soup