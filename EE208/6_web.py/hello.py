#!/usr/bin/env python

import web

urls = (
    '/', 'index'
    )

class index:
    def GET(self):
        print "hello world"

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
