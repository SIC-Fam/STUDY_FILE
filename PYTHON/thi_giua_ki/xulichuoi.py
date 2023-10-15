s = input('Nhap S: ')
if '!' not in s:
    print('Chuoi S sau khi xu ly: '+s+'!!')
elif '!' in s and s.count('!') % 2 !=0:
    print('Chuoi S sau khi xu ly: '+s+'!')
else:
    print('Chuoi S sau khi xu ly: '+s)

