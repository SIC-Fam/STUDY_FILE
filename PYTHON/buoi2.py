# a = int(input('Nhap a = '))
# b = int(input('Nhap b = '))
# print("\nDap an = ",a**(1/b))
# a=2
# b=1
# print(a if a>b else b)

# x = int(input('X = '))
# if x==0:
#     print("Chưa gửi được")
# elif x==1:
#     print("Đã gửi thành công")
# elif x==2:
#     print("Đã gửi và người nhận đã đọc")

def average(a,b,c,d,e):
    return (a+b+c+d+e)/5

def area(a,b,c):
    p = (a+b+c)/2
    return ( p*(p-a)*(p-b)*(p-c) )**1/2

def total(n):
    if n<=9: return n
    else: return n%10 + total(n/10)


def tinhdodai(i1,y1,i2,y2):
    return ((i2-i1)**2 + (y2-y1)**2)**1/2

def area2(x1,y1,x2,y2,x3,y3):
    a= tinhdodai(x1,y1,x2,y2)
    b= tinhdodai(x1,y1,x3,y3)
    c= tinhdodai(x2,y2,x3,y3)
    return area(a,b,c)

#0 1 1 2 3 5 8 13 21
def isFibo(n):
    a,b=0,1
    while(b<n):
        temp=a
        a=b
        b+=temp
        if( n==a or n==b): return 1
    return 0
def tinhgiaithua(n):
    if (n<1): return 
    return tinhgiaithua(n) * tinhgiaithua(n-1)
# print(tinhgiaithua(5))
print(3%12)
