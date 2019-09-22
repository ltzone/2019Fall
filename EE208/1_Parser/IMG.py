import sys
import urllib2
import urllib
import urlparse
import re
from bs4 import BeautifulSoup

def parseIMG(content):
    imgset = set()
    soup = BeautifulSoup(content,features='html.parser')
    for i in soup.findAll('img'):
        imgset.add(i['src'].strip())
    return imgset


def write_outputs(urls, filename):
    with open(filename, 'w') as f:
        for url in urls:
            f.write(url)
            f.write('\n')

def URL_set_uniform(URLset,url):
    urlseg = urlparse.urlparse(url)
    uniURLs = set()
    for j in URLset:
        if re.match('^//',j):
            uniURLs.add(urlseg.scheme+ ':'+j)
        elif (not re.match('://',j)):
            uniURLs.add(urlparse.urljoin(url,j))
        else:
            uniURLs.add(j)
    return uniURLs

def main():
    #url = 'http://www.baidu.com'
    url = 'http://www.sjtu.edu.cn'
    if len(sys.argv) > 1:
        url = sys.argv[1]
    content = urllib2.urlopen(url).read()
    urls = parseIMG(content)
    write_outputs(URL_set_uniform(urls,url), 'res2.txt')


if __name__ == '__main__':
    main()





