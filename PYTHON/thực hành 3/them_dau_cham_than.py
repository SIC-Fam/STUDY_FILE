s = input('Nhap chuoi: ')
print('Chuoi sau khi bo sung dau cham than: ',end='')
if s.endswith('!!!'):
    print('\''+s+'\'')
elif s.endswith('!!'):
    print('\''+s+'!'+'\'')
elif s.endswith('!'):
    print('\''+s+'!!'+'\'')
else: print('\''+s+'!!!'+'\'')

# print(s)