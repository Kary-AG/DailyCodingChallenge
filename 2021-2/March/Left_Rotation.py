import math
import os
import random
import re
import sys

def array_left_rotation(a, n, k):
    k %= n
    return a[k:]+a[:k]

def rotateLeft(d, arr):
    return array_left_rotation(arr,n,d)

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    first_multiple_input = input().rstrip().split()

    n = int(first_multiple_input[0])

    d = int(first_multiple_input[1])

    arr = list(map(int, input().rstrip().split()))

    result = rotateLeft(d, arr)

    fptr.write(' '.join(map(str, result)))
    fptr.write('\n')

    fptr.close()
