#encoding=utf-8
import jieba
import sys, os
import re
from bs4 import BeautifulSoup

reload(sys)
sys.setdefaultencoding('utf-8')

def HtmlToDoc(root,storeDir):
    if not os.path.exists(storeDir):
        os.mkdir(storeDir)

    for root, dirnames, filenames in os.walk(root):
        for filename in filenames:
            print "processing", filename
            try:
                path = os.path.join(root, filename)
                content = open(path)
                soup = BeautifulSoup(content,features='html.parser')
                content.close()
                print ((os.path.join(storeDir, filename)))
                output = open(os.path.join(storeDir, filename),'a')
                title = soup.title.string
                output.write(title+'\n')
                output.write(soup.get_text())
                output.close()
            except Exception, e:
                print "Failed in indexDocs:", e


HtmlToDoc("testdir","docs")