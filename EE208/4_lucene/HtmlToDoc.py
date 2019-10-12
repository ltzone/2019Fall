#encoding=utf-8
import jieba
import sys, os
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
                soup = BeautifulSoup(content,features='lxml')
                content.close()
                output = open(os.path.join(storeDir, filename),'w')
                title = soup.title.string
                output.write(title+'\n')

                # kill all script and style elements
                for script in soup.find_all(["script","style"]):
                    script.extract()  # rip it out

                text = soup.get_text(strip=True)
                seg_list = jieba.cut(text)
                output.write(" ".join(seg_list))
                output.close()
            except Exception, e:
                print "Failed in indexDocs:", e

HtmlToDoc("testdir","docs")