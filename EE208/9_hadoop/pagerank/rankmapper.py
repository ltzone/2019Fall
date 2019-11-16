#!/usr/bin/env python

import sys

# map for subrank (src, rank);(src, dsts) -> (dst, subrank)
current_src = None
current_dst = None
current_degree = 0
current_rank = 0
alpha = 0.85

for line in sys.stdin:
    line = line.strip()
    if len(line) > 0:
        seg = line.split()
        src = seg[0]
        if (src != current_src):
            current_src = src
            current_rank = float(seg[1])*alpha
            print '%s\t%.4f' % (src,float(seg[1])*(1-alpha))
        else:
            if (len(seg)>1):
                current_dst = seg[1:]
                current_degree = len(current_dst)
                subrank = current_rank/current_degree
                for dst in current_dst:
                    print '%s\t%.4f' % (dst,subrank)
