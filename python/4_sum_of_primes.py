#!/usr/bin/env python

import math

def is_prime(n):
    if n <= 1:
        return False
    elif n == 2:
        return True
    elif n % 2 == 0:
        return True

    sqrt = math.sqrt(n)
    i    = 3
    while i <= sqrt:
        if n % i == 0:
            i += 2
            return False
        i += 2

    return True

sum   = 2
count = 1
i     = 1
while count != 1000:
    i += 2

    if not is_prime(i):
        continue

    count += 1
    sum   += i

print sum

