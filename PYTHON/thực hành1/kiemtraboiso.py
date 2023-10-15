a = int(input('A = '))
b = int(input('B = '))
c = int(input('C = '))
if a*b*c >=0:
    if a*b>=0 and b*c>=0 and a*c>=0:
        print('Khong co cap so trai dau')
    else:
        print('Co cap so trai dau')
else:
    if a*b>=0 and b*c>=0 and a*c>=0:
        print('Khong co cap so trai dau')
    else:
        print('Co cap so trai dau')
