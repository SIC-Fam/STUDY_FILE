prices = dict()
stock = dict()
Giatri = dict()
Name = []
dodaicot = 0
print('NHAP BANG GIA:')
while(1):
    name = input('  Ten mat hang: ')
    if name == '': 
        break
    if len(name) > dodaicot:
        dodaicot = len(name)
    price = float(input('  Gia ban hang: '))
    prices.update({name: price})
    Name.append(name)

print('NHAP HANG TON:')
while(1):
    name = input('  Ten mat hang: ')
    if name == '': break
    amount = int(input('  So luong ton kho: '))
    stock.update({name: amount})

stockKey = list(stock.keys())
stockValue = list(stock.values())
for i in range(0, len(prices)):
    hasStock = 0
    for j in range(0, len(stock)):
        if stockKey[j] == Name[i]:
            value = stockValue[j] * prices[Name[i]]
            Giatri.update({Name[i]: value})
            hasStock = 1
    if hasStock == 0:
        Giatri.update({Name[i]: 0})
# Sắp xếp        
Giatrimoi = dict()
valuesSort = sorted(Giatri.values())
for i in range(0, len(Giatri)):
    for j in range(0, len(Giatri)):
        if valuesSort[i] == Giatri[Name[j]]:
            Giatrimoi.update({Name[j] :Giatri[Name[j]]})
# OUTPUT
print('THONG KE HANG TON:')
outputKey = list(Giatrimoi.keys())
for i in range(len(outputKey) -1, -1, -1):
    spacing = dodaicot - len(outputKey[i]) + 1
    print('  '+outputKey[i],end='')
    if Giatrimoi[outputKey[i]] <10: 
        print(' '*spacing+' ',end='')
    else:
        print(' '*spacing,end='')
    print('{:.2f}'.format(Giatrimoi[outputKey[i]]))
