n= int(input('So nguoi ngoi quanh ban: '))
l = list([])
for i in range(1, n+1):
    l.append(str(i))
index = 0 # index list
while(1):
    jump = 1 # check người thứ 3
    if len(l) == 1:
        break
    else:
        while(1):
            if index > len(l)-1:
                index = 0
            jump = jump + 1
            if index == len(l) - 1:
                index = 0
            else:
                index = index + 1
            if jump == 3: # nếu là người thứ 3
                l.pop(index)
                break
print('Nguoi o lai cuoi cung la nguoi thu',l[0])