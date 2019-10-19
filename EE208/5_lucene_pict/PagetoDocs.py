import sys, os
reload(sys)
sys.setdefaultencoding('utf-8')

import jieba,urlparse
from bs4 import BeautifulSoup

def getPageType(URL):
    urlseg = urlparse.urlparse(URL)
    if len(urlseg.path)>0:
        return urlseg.path.split('/')[1]
    else:
        return ''

def extract_subject(soup, output):
    global COUNT
    title = soup.h1.get_text(strip=True).split('(')[0]
    titleseg = jieba.cut(title)
    title = ' '.join(titleseg)

    # main movie
    output.write(soup.find(id = "mainpic").img['src']+'\n')
    output.write(title+' ')
    infoseg = jieba.cut(soup.find(id="info").get_text(strip=True))
    infos = " ".join(infoseg)
    output.write(infos+'\n')
    COUNT += 1

    for celebrity in soup.select(".celebrity"):
        imgsrc = celebrity.select('.avatar')[0]['style'].split('(')[1].split(')')[0]
        output.write(imgsrc+'\n')
        output.write(title+' ')
        textseg = jieba.cut(' '.join(celebrity.select(".info")[0].get_text().split('\n')))
        output.write(" ".join(textseg))
        output.write('\n')
        COUNT += 1

    related_session = soup.find(id = "related-pic")
    for pic in related_session.find_all('img'):
        imgsrc = pic['src']
        output.write(imgsrc+'\n')
        output.write(title+' ')
        output.write(infos)
        output.write('\n')
        COUNT += 1

    output.write('EOF')


def extract_celebrity(soup, output):
    global COUNT
    title = soup.h1.get_text(strip=True).split('(')[0]
    titleseg = jieba.cut(title)
    title = ' '.join(titleseg)

    # main celebrity
    output.write(soup.find(id = "headline").img['src']+'\n')
    output.write(title+' ')
    infoseg = jieba.cut(' '.join(soup.select(".info")[0].get_text(strip=True).split('\n')))
    infos = " ".join(infoseg)
    introseg = jieba.cut(' '.join(soup.find(id="intro").get_text(strip=True).split('\n')))
    intro = " ".join(introseg)
    output.write(infos+intro+'\n')
    COUNT += 1

    related_session = soup.find(id="photos")
    for pic in related_session.find_all('img'):
        imgsrc = pic['src']
        output.write(imgsrc+'\n')
        output.write(title+' ')
        output.write(infos)
        output.write('\n')
        COUNT += 1

    output.write('EOF')



def PagesToDocs(root,index,storeDir):
    if not os.path.exists(storeDir):
        os.mkdir(storeDir)
    filenames = open(index)
    docindex = open("docindex", 'a')

    while (True):
        fileline = filenames.readline().split()
        if len(fileline)==0:
            break
        URL= fileline[0]
        filename = fileline[1]
        pagetype = getPageType(URL)
        print 'processing ', URL, "as a", pagetype
        try:
            path = os.path.join(root, filename)
            content = open(path)
            soup = BeautifulSoup(content, features='lxml')
            content.close()
            if pagetype in ["subject","celebrity"]:
                output = open(os.path.join(storeDir, filename), 'w')
                title = soup.title.string.strip().split('(')[0]
                output.write(title + '\n')
                output.write(URL+'\n')
                globals()['extract_%s' % pagetype](soup, output)
                output.close()
                docindex.write(filename + '\n')
        except Exception, e:
            print "Failed in indexDocs:", e
    docindex.close()
    filenames.close()

COUNT = 0
PagesToDocs("html","index.txt","docs")



#content = open('html/httpsmovie.douban.comcelebrity1274500')
#soup = BeautifulSoup(content, features='lxml')
#output = open('1.txt','w')
#extract_celebrity(soup,output)
#print "total images collected", COUNT


