
n = int(input('N = '))
sum = 0
for i in range (2, n+1, 2):
    sum = sum + i**2
# sum = (n*(n//2+1)*(n+1))/3
print('P(', end='')
print(n, end='')
print(') = {:.0f}'.format(sum) ) 