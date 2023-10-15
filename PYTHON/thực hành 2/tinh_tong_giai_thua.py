n = int(input('Nhap N duong: '))
def tinhgiaithua(n):
    if n==1:
        return 1
    total = 1
    for i in range(1,n+1):
        total = total*i
    return total
total = 0
for i in range (1,n+1):
    total = total + tinhgiaithua(i)
print('F(', end='')
print(n, end='')
print(') = ',end='')
print(total)
