import re
import sys

with open(sys.argv[1], 'r') as fh:
    for line in fh.readlines():
        line = line.strip()
        if line == '':
            continue

        line = re.sub(r'[^a-z]', '', line.lower())

        alphabet = frozenset(list(line))
        counts = sorted([len(re.findall(l, line)) for l in alphabet], reverse = True)
        score = 0
        for i in range(len(counts)):
            score += (26 - i) * counts[i]

        print score

