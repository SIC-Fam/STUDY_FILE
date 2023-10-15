def SWAP(a,b,c):
    if a>b:
        a=a+b
        b=a-b
        a=a-b
    elif b>c:
        b=b+c
        c=b-c
        b=b-c
    elif a<=b and b<=c:
        if a==b and b==c:
            print('Xep tang dan:',a)
        elif a==b:
            print('Xep tang dan:',a,c)
        elif b==c:
            print('Xep tang dan:',a,c)
        else: print('Xep tang dan:',a, b, c)
        return 0
    SWAP(a,b,c)
a = int(input('A = '))
b = int(input('B = '))
c = int(input('C = '))
SWAP(a,b,c)