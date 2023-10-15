import math
n = int(input('Nhap N: '))
arr = list()
A = list()
B = list()
C = list()

# s = ''
for i in range(1, n+1):
    x = input('Nhap gia tri thu %s: ' % i)
    arr.append(x)
    # s = s + x + ' '
for i in range( n-1,-1,-1):
    temp = str(arr[i])
    if temp.isalpha():
        C.append(temp)
    else: 
        temp = float(temp)
        if temp.is_integer():   
            A.append(int(temp))
        else:
            B.append(temp)
print('A =',A)
print('B =',B)
print('C =',C)


# print(s)

