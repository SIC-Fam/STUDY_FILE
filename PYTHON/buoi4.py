# a = ['123', '13', '90',"-1", -100]
# a[-1] = '-100' 
# a.sort()  
# a.sort(key=int) 
# print(a) 
# a.sort(key=int, reverse=True)
# print(a) 

# in tam giác pascal
# n = int(input('Nhap N ='))
# def next_line(L):
#     # pass
#     return [1] + [L[i-1]+L[i] for i in range (1, len(L))] +[1]
# L=[1]
# for i in range(n):
#     print(f"{' '.join(str(x) for x in L):^80}")
#     L = next_line(L)

# list số nguyên tố nhỏ hơn n
def checkNto(n):
    for i in range (2,n):
        if n%i == 0:
            return 0
    return 1

# list số fibonanci
def fibo(n):
    a, b = 0, 1
    while a < n:
        yield a
        a, b = b, a+b

    
