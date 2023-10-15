def isFibo(n):
    a,b=0,1
    while(b<n):
        temp=a
        a=b
        b+=temp
        if( n==a or n==b): return 1
    return 0
n = int(input('N = '))
if (isFibo(n)):
    if n%2==0: print('N la so fibonacci chan')
    else: print('N khong phai la so fibonacci chan')
else: print('N khong phai la so fibonacci chan')
