import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (s, coords) = line.split('|')
        coords = [int(c) for c in coords.split(' ') if c != '']

        print ''.join([s[i - 1] for i in coords])

