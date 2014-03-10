import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        (l0, l1) = [l.split(' ') for l in line.split(' | ')]

        count = min(len(l0), len(l1))
        products = []
        for i in range(count):
            products.append(str(int(l0[i]) * int(l1[i])))

        print ' '.join(products)

