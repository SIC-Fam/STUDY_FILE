n = int(input('N = '))
sum = 2**n
total = 0
while(sum>0):
    total+= sum%10
    sum = sum//10
print('Tong =',total)