#!/usr/bin/env python

import sys

# reducer
current_word = None
current_count = 0
current_length = 0
word = None

for line in sys.stdin:
    line = line.strip()
    word,length,count = line.split('\t',2)

    try:
        count = int(count)
        length = int(length)
    except ValueError:
        continue
    if current_word == word:
        current_count += count
        current_length += length
    else:
        if current_word:
            print current_word, float(current_length)/current_count
        current_count = count
        current_word = word
        current_length = length

if current_word== word:
    print current_word, float(current_length)/current_count
    
