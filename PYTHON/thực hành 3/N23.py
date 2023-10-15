n = int(input('N = '))
arr = list([1,3,4,7])
i = 8
while (len(arr) <n):
    for para in arr:
        if  para*2+1 == i or  para *3+1 == i:
            if i in arr: continue
            else:
                arr.append(i)
    i = i + 1
print('%s so dau tien cua N23:'%n, *arr)