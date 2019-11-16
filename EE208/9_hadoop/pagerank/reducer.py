#!/usr/bin/env python

import sys

# reducer
current_src = None
current_rank = 0

for line in sys.stdin:
    line = line.strip()
    if len(line) > 0:
        seg = line.split()
        src = seg[0]
        if (src != current_src):
            if (current_src):
                print '%s %.4f' % (current_src, current_rank)
            current_src = src
            current_rank = float(seg[1])
        else:
            current_rank += float(seg[1])
            
if current_src == src:
    print '%s %.4f' % (current_src, current_rank)
    
# (src, rank) after iteration
