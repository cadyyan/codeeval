import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        print ','.join(sorted(frozenset(line.split(',')), key = lambda v: int(v)))

