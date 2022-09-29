#Liste des nombres premiers de 1 à 100000


for n in range(1,1000000 + 1):
    if n>1:
        for i in range(2,n):
            if (n%i)== 0 :
                break;
        else:
            print(n)


            
