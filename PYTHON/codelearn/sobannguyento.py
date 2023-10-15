import math
def isPrime(n):
    for i in range (2, n):
        if n % i ==0:
            return False
    return True
def isSemiPrime(n):
    if n<2:
        return False
    else:
        for i in range (2, n):
            if math.ceil(n/i) == math.floor(n/i):
                temp = math.ceil(n/i)
                if isPrime(i) and isPrime(temp):
                    return True
        return False     