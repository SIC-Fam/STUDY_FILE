def check(a,b,c,d,e,m,n):
    return a+b+c+d+e<=m and a*200+b*500+c*1000+d*2000+e*5000 == n
n = int(input('N = '))
m = int(input('M = '))
count = 0
if n%100 !=0:
    count = 0
else:
    for a in range (0,int((n/200)+1)):
        # if a>m: break
        for b in range (0,int((n/500)+1)):
            # if a+b>m: break
            for c in range (0,int((n/1000)+1)):
                # if a+b+c>m: break
                for d in range(0, int((n/2000)+1)):
                    # if a+b+c+d>m: break
                    for e in range(0,int((n/5000)+1)):
                        if check(a,b,c,d,e,m,n): 
                            count = count + 1
                            break
                        # if a+b+c+d+e>m: break
print('Co',count,'phuong an doi tien')