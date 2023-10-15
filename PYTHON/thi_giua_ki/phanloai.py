n = int(input('Nhap N: '))
arr = list()
A = list()
B = list()
sumA = 0
for i in range(1, n+1):
    x = input('Nhap gia tri thu %s: ' % i)
    arr.append(x)
for i in range( 0,n):
    next = 1
    if temp.isalpha():
        B.append(temp)
    else: 
        for j in temp:
            if j.isalpha():
                B.append(temp)
                next = 0
                break
        if next == 1:
            try:
                temp = float(temp)
            except:
                B.append(temp)
                continue
            if temp.is_integer():   
                A.append(int(temp))
            else:
                A.append(temp)
            sumA = sumA + temp
print('Tong cac phan tu cua A =', sumA)    
print('B =',sorted(B, reverse=True))

