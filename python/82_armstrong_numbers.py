from math import pow
from sys import argv

with open(argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        num = int(line)
        length = len(line)
        sum = 0
        for c in line:
            sum += int(pow(int(c), length))

        print num == sum

