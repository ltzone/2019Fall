#!/usr/bin/env python

INDEX_DIR = "pictindex"

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

def run(searcher, analyzer, command):

    seg_list = jieba.cut(command)
    command = (" ".join(seg_list))

    res_lis = []

    query = QueryParser(Version.LUCENE_CURRENT, "contents",
                        analyzer).parse(command)
    scoreDocs = searcher.search(query, 50).scoreDocs

    for i, scoreDoc in enumerate(scoreDocs):
        doc = searcher.doc(scoreDoc.doc)
        res_lis.append((doc.get("imgurl").strip(),doc.get("url").strip(),doc.get("title")))

    return res_lis

def img_func(query):
    result_seg = running(query)
    output = ''
    count = 0
    for item in result_seg:
        count += 1
        output += "<div class='col-md-3'>"
        output += "<div class='imgsec' id='res"+str(count)+"'>"
        output += "<a class='thumbnail' href='"+item[1]+"'>"
        output += "<img class='img-responsive' src='"+item[0]+"' alt='"+item[2]+"'> </img>"
        output += "<p class='imgtext'>"+item[2]+"</p></a>"        
        output += "</div></div>"
    return output

def running(command):
    command = unicode(command)
    STORE_DIR = "pictindex"
    directory = SimpleFSDirectory(File(STORE_DIR))
    searcher = IndexSearcher(DirectoryReader.open(directory))
    analyzer = SimpleAnalyzer(Version.LUCENE_CURRENT)
    return run(searcher, analyzer, command)

if __name__ == '__main__':
    STORE_DIR = "index"
    lucene.initVM(vmargs=['-Djava.awt.headless=true'])
    print 'lucene', lucene.VERSION
    #base_dir = os.path.dirname(os.path.abspath(sys.argv[0]))
    #directory = SimpleFSDirectory(File(STORE_DIR))
    #searcher = IndexSearcher(DirectoryReader.open(directory))
    #analyzer = SimpleAnalyzer(Version.LUCENE_CURRENT)
    #run(searcher, analyzer)
    del searcher
