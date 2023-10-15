a = int(input('A = '))
b = int(input('B = '))
c = int(input('C = '))
if a<0 or b<0 or c<0:
    print('Khong phai tam giac')
else:
    if a>=(b+c):
        print('Khong phai tam giac')
    elif b>=(a+c):
        print('Khong phai tam giac')
    elif c>=(a+b):
        print('Khong phai tam giac')
    else:
        print('Dung la tam giac')

