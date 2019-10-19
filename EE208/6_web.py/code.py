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




try:
    vm_env = lucene.initVM(vmargs=['-Djava.awt.headless=true'])
    print 'lucene', lucene.VERSION
except:
    vm_env = lucene.getVMEnv()


urls = (
    '/', 'index',
    '/s', 's'
)


render = web.template.render('templates') # your templates

login = form.Form(
    form.Textbox('keyword'),
    form.Button('Search'),
)

def parseCommand(command):
    '''
    input: C title:T author:A language:L
    output: {'contents':C, 'title':T, 'author':A, 'language':L}

    Sample:
    input:'contenance title:henri language:french author:william shakespeare'
    output:{'author': ' william shakespeare',
                   'language': ' french',
                   'contents': ' contenance',
                   'title': ' henri'}
    '''
    allowed_opt = ['site']
    command_dict = {}
    opt = 'contents'
    for i in command.split(' '):
        if ':' in i:
            opt, value = i.split(':')[:2]
            opt = opt.lower()
            if opt in allowed_opt and value != '':
                command_dict[opt] = command_dict.get(opt, '') + ' ' + value
        else:
            command_dict[opt] = command_dict.get(opt, '') + ' ' + i
    return command_dict

def run(searcher, analyzer, command):
    command_dict = parseCommand(command)
    seg_list = jieba.cut(command_dict['contents'])
    command_dict['contents'] = (" ".join(seg_list))
    querys = BooleanQuery()
    for k,v in command_dict.iteritems():
        query = QueryParser(Version.LUCENE_CURRENT, k, analyzer).parse(v)
        querys.add(query, BooleanClause.Occur.MUST)

    scoreDocs = searcher.search(querys, 50).scoreDocs
    print "%s total matching documents." % len(scoreDocs)

    scorer = QueryScorer(query)
    fragmenter = SimpleSpanFragmenter(scorer)
    simpleHTMLFormatter = SimpleHTMLFormatter("<b><font color='red'>", "</font></b>")
    highlighter = Highlighter(simpleHTMLFormatter, scorer)
    highlighter.setTextFragmenter(fragmenter)


    results = []

    for i, scoreDoc in enumerate(scoreDocs):
        doc = searcher.doc(scoreDoc.doc)
        contents = doc.get("contents");
        if contents :
            tkStream = analyzer.tokenStream("contents",contents)
            highlight = highlighter.getBestFragment(tkStream, contents)

        results.append((doc.get("title").strip(),doc.get("url"),highlight))
        '''
        print 'path:', doc.get("path"), \
            '\nname:', doc.get("name"), \
            '\ntitle:', doc.get("title"), \
            "url:",doc.get("url"), \
            "\nsite:",doc.get("site"),\
            "\ncontent:",highlight,"\n"
        '''
        # print 'explain:', searcher.explain(query, scoreDoc.doc)
    return results

def running(command):
    command = unicode(command)
    STORE_DIR = "index"
    directory = SimpleFSDirectory(File(STORE_DIR))
    searcher = IndexSearcher(DirectoryReader.open(directory))
    analyzer = SimpleAnalyzer(Version.LUCENE_CURRENT)
    return run(searcher, analyzer, command)



def func(command):
    result_seg = running(command)
    output = ''
    count = 0
    for item in result_seg:
        count += 1
        output += "<div id='res"+str(count)+"'>"
        output += "<h3><a href='"+item[1]+"'>"+item[0]+"</a></h3>"
        output += "<p>"+item[2]+"</p>"
        output += item[1]
        output += "</div>"
        output += "<hr>"
    return output

class index:
    def GET(self):
        f = login()
        return render.formtest(f)

class s:
    def GET(self):
        user_data = web.input()
        vm_env.attachCurrentThread()
        f = login()
        kw = user_data.keyword
        contents = func(kw)
        return render.result(f,kw,contents)

if __name__ == "__main__":

    app = web.application(urls, globals())
    app.run()
