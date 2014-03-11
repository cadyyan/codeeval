import sets
import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (s1, s2) = [sets.Set(s.split(',')) for s in line.split(';')]

        print ','.join(sorted(s1.intersection(s2), key = lambda v: int(v)))

