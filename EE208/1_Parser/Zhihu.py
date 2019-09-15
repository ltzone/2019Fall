import sys
import urllib2
from bs4 import BeautifulSoup

reload(sys)
sys.setdefaultencoding('utf-8')

def parseZhihuPic(url,content):
    pics = set()
    soup = BeautifulSoup(content,features='html.parser')
    divs = soup.findAll("div", "box")
    for i in divs:
        pics.add((i.img['src'],i.span.string,url+i.a['href']))
    return pics

def write_outputs(pics, filename):
    with open(filename, 'w') as f:
        for pic in pics:
            for j in range(3):
                f.write(pic[j])
                f.write('\n')

def main():
    url = 'http://daily.zhihu.com'
    if len(sys.argv) > 1:
        url = sys.argv[1]
    content = urllib2.urlopen(url).read()
    pics = parseZhihuPic(url,content)
    write_outputs(pics, 'res3.txt')

if __name__ == '__main__':
    main()