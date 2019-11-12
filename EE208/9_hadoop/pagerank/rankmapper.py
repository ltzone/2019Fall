#!/usr/bin/env python

import sys

# map for subrank (src, rank);(src, dsts) -> (dst, subrank)
current_src = None
current_dst = None
current_degree = 0
current_rank = 0

for line in sys.stdin:
    line = line.strip()
    if len(line) > 0:
        seg = line.split()
        src = seg[0]
        if (src != current_src):
            current_src = src
            current_rank = float(seg[1])
        else:
            if (len(seg)>1):
                current_dst = seg[1:]
                current_degree = len(current_dst)
                subrank = current_rank/current_degree
                for dst in current_dst:
                    print '%s\t%s' % (dst,subrank)
