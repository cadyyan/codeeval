import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        sum = 0
        for c in line:
            sum += int(c)
        print sum

