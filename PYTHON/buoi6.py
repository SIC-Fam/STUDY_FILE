import math
# Bài 1
# D = {0:'zero', 1:'one', 2:'two', 3:'three', 4:'four', 5:'five', 6:'six', 7:'seven', 8:'eight', 9:'nine'}
# for i in range(0, len(D)):
#     print(D.get(i))
# Bài 2
# D = dict()
# n = int(input('Ban muon nhap bao nhieu value? '))
# for i in range(0, n):
#     s = input('Nhap value: ')
#     D.update({i: s})
# for i in range(0, len(D)):
#     print(D.get(i), end=', ')
# Bài 3
# s = input('Nhap cac gia tri: ').split()
# D = {i: int(s[i]) for i in range(len(s))}
# valuesSort = sorted(D.values())
# print(valuesSort[-1], valuesSort[-2], valuesSort[-3])
# Bài 4
# s = input('Nhap s = ').split()
# D = {i: s.count(i) for i in s}
# print(D)
# Bài 5
prices = dict()
stock = dict()
Giatri = dict()
n = int(input('Ban muon nhap bao nhieu loai trai? '))
for i in range (0,n):
    name = input('Loai trai: ')
    price = float(input('Gia: '))
    prices.update({name: price})
    amount = int(input('So luong ton: '))
    stock.update({name: amount})
    value = price*amount
    Giatri.update({name: value})

# valuesSort = sorted(Giatri.values())
# print(valuesSort)
# print('PRICES = ', prices)
# print('STOCK = ', stock)




