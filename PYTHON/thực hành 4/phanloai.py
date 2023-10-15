import math
from pickle import FALSE
n = int(input('Nhap N: '))
arr = list()
A = list()
B = list()
count = 0
sumA = 0
for i in range(1, n+1):
    x = input('Nhap gia tri thu %s: ' % i)
    arr.append(x)
for i in range( 0,n):
    next = 1
    temp = str(arr[i])
    if temp.isalpha():
        B.append(temp)
    else: 
        for j in temp:
            if j.isalpha():
                B.append(temp)
                next = 0
                break
        if next == 1:
            temp = float(temp)
            if temp.is_integer():   
                A.append(int(temp))
            else:
                A.append(temp)
            count = count + 1
            sumA = sumA + temp
if count != 0 :
    print('TBC cua A =', sumA/count)
    
print('B =',B)

