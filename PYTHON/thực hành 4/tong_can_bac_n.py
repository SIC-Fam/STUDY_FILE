n = int(input('N = '))

temp = 1
Fn=1
for i in range(1, n):
    temp = temp + i 
    Fn = Fn + (temp+i)**(1/(i+1))
print('F(', end='')
print(n, end='')
print(') = ',end='')
print('{:.7f}'.format(Fn))
