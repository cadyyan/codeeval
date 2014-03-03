#!/usr/bin/env python

import sys

with open(sys.argv[1], 'r') as fh:
    lines = fh.readlines()

    for line in lines:
        line = line.strip()
        if line == '':
            continue

        (a, b, n) = [int(n) for n in line.split(' ')]

        output = []
        for i in range(1, n + 1):
            if i % a == 0 and i % b == 0:
                output.append('FB')
            elif i % a == 0:
                output.append('F')
            elif i % b == 0:
                output.append('B')
            else:
                output.append(str(i))

        print ' '.join(output)

