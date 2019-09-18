import sys
import urllib2
import re
from bs4 import BeautifulSoup

def parseIMG(content):
    imgset = set()
    soup = BeautifulSoup(content,features='html.parser')
    for i in soup.findAll('img'):
        imgset.add(i['src'])
    return imgset


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
    urls = parseIMG(content)
    write_outputs(urls, 'res2.txt')


if __name__ == '__main__':
    main()





