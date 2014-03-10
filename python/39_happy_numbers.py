import sys

def is_happy(n):
    tolerance = 100
    while tolerance > 0:
        sum = 0
        for c in n:
            sum += int(c) * int(c)

        if sum == 1:
            return True

        n = str(sum)
        tolerance -= 1

    return False

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        print 1 if is_happy(line) else 0

