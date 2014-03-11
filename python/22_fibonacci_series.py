import sys

def fibonacci(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1

    return fibonacci(n - 1) + fibonacci(n - 2)

with open(sys.argv[1]) as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        print fibonacci(int(line))

