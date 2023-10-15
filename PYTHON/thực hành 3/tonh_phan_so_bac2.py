n = int(input('N = '))
total = 0
output = 0
for i in range (1, n+1):
    total = total + i**2 
    output = output + (n/total)
print('F(', end ='')
print(n, end ='')
print(') = {:.7f}'.format(output) ) 



