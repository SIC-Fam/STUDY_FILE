s = input('Nhap chuoi cua ban: ')
for i in s:
    if i.isdigit():
        s = s.replace(i,'?')
print(s)