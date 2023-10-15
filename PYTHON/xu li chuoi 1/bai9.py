s = input('Nhap chuoi cua ban: ')
def check(s):
    if s[len(s)::-1] == s:
        return 1
    return 0
        
if check(s): print('La chuoi doi xung')
else: print('Khong la chuoi doi xung')