
import sys, os, lucene, threading, time
from datetime import datetime

reload(sys)
sys.setdefaultencoding('utf-8')

from java.io import File
from org.apache.lucene.analysis.core import WhitespaceAnalyzer
from org.apache.lucene.document import Document, Field, FieldType
from org.apache.lucene.index import FieldInfo, IndexWriter, IndexWriterConfig
from org.apache.lucene.store import SimpleFSDirectory
from org.apache.lucene.util import Version
from org.apache.lucene.search import IndexSearcher, TermQuery

class Ticker(object):

    def __init__(self):
        self.tick = True

    def run(self):
        while self.tick:
            sys.stdout.write('.')
            sys.stdout.flush()
            time.sleep(1.0)


class IndexFiles(object):
    """Usage: python IndexFiles <doc_directory>"""

    def __init__(self, root, storeDir, f):
        self.filedir = f

        if not os.path.exists(storeDir):
            os.mkdir(storeDir)

        store = SimpleFSDirectory(File(storeDir))
        analyzer = WhitespaceAnalyzer(Version.LUCENE_CURRENT)
        config = IndexWriterConfig(Version.LUCENE_CURRENT, analyzer)
        config.setOpenMode(IndexWriterConfig.OpenMode.CREATE)
        writer = IndexWriter(store, config)

        self.indexDocs(root, writer)
        ticker = Ticker()
        print 'commit index',
        threading.Thread(target=ticker.run).start()
        writer.commit()
        writer.close()
        ticker.tick = False
        print 'done'

    def indexDocs(self, root, writer):

        t1 = FieldType() #t1 is used in path and URL fields
        t1.setIndexed(False)
        t1.setStored(True)
        t1.setTokenized(False)

        t2 = FieldType() #t2 is used to index contents
        t2.setIndexed(True)
        t2.setStored(False)
        t2.setTokenized(True)
        t2.setIndexOptions(FieldInfo.IndexOptions.DOCS_AND_FREQS_AND_POSITIONS)

        t3 = FieldType() #t3 is used to index titles
        t3.setIndexed(True)
        t3.setStored(True)
        t3.setTokenized(True)
        t3.setIndexOptions(FieldInfo.IndexOptions.DOCS_AND_FREQS_AND_POSITIONS)

        t4 = FieldType() #t3 is used to index sites
        t4.setIndexed(True)
        t4.setStored(True)
        t4.setTokenized(False)
        t4.setIndexOptions(FieldInfo.IndexOptions.DOCS_AND_FREQS_AND_POSITIONS)


        indextxt = open(self.filedir, 'r')


        while True:
            t = indextxt.readline()
            if (len(t) == 0):
                indextxt.close()
                return
            t = t.split()
            filename = t[1]
            URL = t[0]
#        for root, dirnames, filenames in os.walk(root):
#            for filename in filenames:
            print "updating", filename
            try:
                writer.deleteDocuments(Term("name", filename))
                path = os.path.join(root, filename)
                file = open(path)
                title = file.readline()
                print title
                contents = unicode(file.read())
                file.close()
                doc = Document()
                doc.add(Field("name", filename, t1))
                doc.add(Field("path", path, t1))
                doc.add(Field("url", URL, t1))
                doc.add(Field("title",title, t3))
                doc.add(Field("site", site, t4))
                if len(contents) > 0:
                    doc.add(Field("contents", contents, t2))
                else:
                    print "warning: no content in %s" % filename
                writer.addDocument(doc)
            except Exception, e:
                print "Failed in indexDocs:", e


if __name__ == '__main__':
    lucene.initVM(vmargs=['-Djava.awt.headless=true'])
    print 'lucene', lucene.VERSION
    start = datetime.now()
    try:
        IndexFiles('docs', "index", "index.txt")
        end = datetime.now()
        print end - start
    except Exception, e:
        print "Failed: ", e
        raise e

