import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        print ' '.join([s[0].upper() + s[1:] for s in line.split(' ')])

