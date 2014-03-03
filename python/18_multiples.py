#!/usr/bin/env python

import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (x, n) = [int(v) for v in line.split(',')]
        v = n
        while v < x:
            v += n

        print v

