#!/usr/bin/env python

import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        words = line.split(' ')
        words.reverse()
        print ' '.join(words)

