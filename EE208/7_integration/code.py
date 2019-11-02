# coding=UTF-8
import web
from web import form
import urllib2
import sys, os, lucene
reload(sys)
sys.setdefaultencoding('utf-8')

from java.io import File
from org.apache.lucene.analysis.core import SimpleAnalyzer
from org.apache.lucene.index import DirectoryReader
from org.apache.lucene.queryparser.classic import QueryParser
from org.apache.lucene.store import SimpleFSDirectory
from org.apache.lucene.search import IndexSearcher
from org.apache.lucene.util import Version
from org.apache.lucene.search import BooleanQuery
from org.apache.lucene.search import BooleanClause
import jieba

from org.apache.lucene.search.highlight import Fragmenter
from org.apache.lucene.search.highlight import Highlighter
from org.apache.lucene.search.highlight import InvalidTokenOffsetsException
from org.apache.lucene.search.highlight import QueryScorer
from org.apache.lucene.search.highlight import SimpleHTMLFormatter
from org.apache.lucene.search.highlight import SimpleSpanFragmenter

from HighlightSearchFiles import web_func
from SearchPicts import img_func

try:
    vm_env = lucene.initVM(vmargs=['-Djava.awt.headless=true'])
    print 'lucene', lucene.VERSION
except:
    vm_env = lucene.getVMEnv()


urls = (
    '/', 'index',
    '/s', 's',
    '/img', 'i',
    '/jump','j',
)


render = web.template.render('templates') # your templates

login = form.Form(
    form.Textbox('keyword',web.form.notnull),
    form.Radio('option',['web','images']),
    form.Button('Search'),
)


class index:
    def GET(self):
        f = login()
        return render.index(f)

class s:
    def GET(self):
        user_data = web.input()
        option = user_data.option
        kw = user_data.keyword
        vm_env.attachCurrentThread()
        if (option == 'web'):
            f = login()
            contents = web_func(kw)
            return render.result(f, kw, contents)
        else :
            f = login()
            contents = img_func(kw)
            return render.result(f, kw, contents)



if __name__ == "__main__":

    app = web.application(urls, globals())
    app.run()
