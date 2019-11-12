#!/usr/bin/env python

import sys

for line in sys.stdin:
    line = line.strip()
    if len(line) > 0:
        words = line.split()
        key = int(words[0])
        if len(words) > 1:
            value = int(words[1])
        else:
            value = key
        print '%s\t%s' % (key, value + key)

