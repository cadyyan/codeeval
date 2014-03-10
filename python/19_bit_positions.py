import sys

def bit(n, p):
    return (n & (1 << (p - 1))) >> (p - 1)

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (n, p1, p2) = [int(v) for v in line.split(',')]

        print 'true' if bit(n, p1) == bit(n, p2) else 'false'

