# Bài 1: Tạo tập hợp từ 0 đến 99 
A = set()
for i in range (0, 100):
    A.add(i)
print(A)
# Bài 2: Tập hợp số lẻ từ 1 đến 199
B = set()
for i in range (1, 200):
    if i%2!=0:
        A.add(i)
print(B)

# Bài 8
n= int(input('Nhap N = '))
listSo = []
for i in range (0, n):
    BoSo = input('Nhap bo 6 so: ').split()
    listSo.append(set(BoSo))
VL = input('Nhap giai dac biet: ').split()
VL = set(VL)
for i in listSo:
    if len(i&VL) >= len(i) -1:
        print(i)
