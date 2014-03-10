import math
import re
import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (x0, y0, x1, y1) = [int(v) for v in re.findall(r'-?\d+', line)]

        print int(math.sqrt(math.pow(x1 - x0, 2) + math.pow(y1 - y0, 2)))

