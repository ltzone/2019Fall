import sys
import urllib2
import re
from bs4 import BeautifulSoup


def parseURL(content):
    urlset = set()
    soup = BeautifulSoup(content,features='html.parser')
    for i in soup.findAll('a',{'href': re.compile('://')}):
        urlset.add(i['href'])
    return urlset


def parseIMG(content):
    imgset = set()
    soup = BeautifulSoup(content,features='html.parser')
    for i in soup.findAll('img'):
        imgset.add(i['src'])
    return imgset

def parseZhihuPic(content):
    pics = set()
    soup = BeautifulSoup(content,features='html.parser')
    soup = soup.body.div.main-content.
    for i in soup.findAll()
    pass
    return pics





def write_outputs(urls, filename):
    with open(filename, 'w') as f:
        for url in urls:
            f.write(url)
            f.write('\n')


def main():
    url = 'http://www.baidu.com'
    # url = 'http://www.sjtu.edu.cn'
    if len(sys.argv) > 1:
        url = sys.argv[1]
    content = urllib2.urlopen(url).read()
    urls = parseURL(content)
    write_outputs(urls, 'res1.txt')


if __name__ == '__main__':
    main()

