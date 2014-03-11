import re
import sys

def is_self_describing(n):
    for i in range(len(n)):
        c = n[i]

        if int(c) != len(re.findall(str(i), n)):
            return False

    return True

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        print 1 if is_self_describing(line) else 0

