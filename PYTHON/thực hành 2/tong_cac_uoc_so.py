n = int(input('N = '))
sum = n + 1
for i in range (2, n,1):
    if n%i == 0:
        sum+=i
print('Tong cac uoc so cua',n,'la',sum)