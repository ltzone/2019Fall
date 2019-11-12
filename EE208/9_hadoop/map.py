#!/usr/bin/env python

import sys

# map graph
for line in sys.stdin:
    line = line.strip()
    print line
        
# map rank 
for line in sys.stdin:
    line = line.strip()
    print line
        
# sort by src (src,rank);(src, dsts)

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
            current_dst = seg[1:].join('\t')
            current_degree = len(current_dst)
            subrank = current_rank/current_degree
            for dst in current_dst:
                print '%s\t%s' % (dst,subrank)


# (dst, subrank) sort by dst

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
                print '%s\t%s' % (current_src, current_rank)
            current_src = src
            current_rank = seg[0]
        else:
            current_rank += seg[1]
            
if current_src == src:
    print '%s\t%s' % (current_src, current_rank)
    
# (src, rank) after iteration
    
    
    
    

            
