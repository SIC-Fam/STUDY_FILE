# Bài 1: Kiểm tra xem N có phải số nguyên tố hay không
def isPrime(n):
    if n<=1:
        return False
    for i in range(2, n):
        if n%i==0:
            return False
    return True
# Bài 2: In ra số nguyên tố nằm trong khoảng A và B
a = int(input('Nhap so A = '))
b = int(input('Nhap so B = '))
print('2. Các số nguyên tố nằm trong khoảng từ ',a,'den ',b,' la: ')
for i in range (a, b+1):
    if isPrime(i):
        print(i, end=' ')
# Bài 3: Tìm UCLN và BCNN
def gcd(a, b): #UCLN
    while a*b !=0:
        if a>b : a%=b
        else: b%=a
    return a+b
def lcm(a, b):
    return int ((a*b) /gcd(a, b))
print('\n3. UCLN: ',gcd(a,b))
print('BCNN: ',lcm(a,b))
# Bài 4: Nhập liên tiếp 1 dãy số cho đến khi nhập 1 số âm
dayso = ''
while(1):
    a = int(input('Nhap 1 so: '))
    if a<0: break
    else:
        dayso= dayso + str(a) + ' '
print('Day ban vua nhap: ' + dayso)

    
    

