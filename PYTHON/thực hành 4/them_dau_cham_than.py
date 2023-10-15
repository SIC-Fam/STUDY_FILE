s = input('Nhap S: ')
print('Chuoi S sau khi xu ly: ',end='')
if s.endswith('!!!'):
    print(s)
elif s.endswith('!!'):
    print(s+'!')
elif s.endswith('!'):
    print(s+'!!')
elif s.endswith('!!!') and s[-4] == '!':
    print(s)
else:
    print(s+'!!!')

# print(s)