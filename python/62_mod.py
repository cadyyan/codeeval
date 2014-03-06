import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (n, m) = [int(n) for n in line.split(',')]
        while n >= m:
            n -= m

        print n

