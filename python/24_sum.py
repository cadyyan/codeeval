import sys

with open(sys.argv[1], 'r') as fh:
    sum = 0
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        sum += int(line)

    print sum

