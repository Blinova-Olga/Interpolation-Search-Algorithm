import random
import math
import time

def interp(R, seq, element):
    l = 0
    r = R - 1
    num1 = 0
    #r = len(seq) - 1
    while seq[l] < element and seq[r] > element:
        if seq[l] == seq[r]:
            break
        index = (element - seq[l]) * (l - r) // (seq[l] - seq[r]) + l
        num1 += 1
        if seq[index] > element:
            r = index - 1
        elif seq[index] < element:
            l = index + 1
        elif seq[index] == element:
            return  num1
    if seq[l] == element:
        return num1
    if seq[r] == element:
        return num1
    return -1


f = open('text.txt', 'w')
mass = []

for j in range(1, 1000001): #кол-во элементов в самом большом массиве
    x = random.random()
    element = math.floor(1 + (x * (10000000 - 1)))
    mass.append(element) # формируем массив из рандомных чисел от 1 до 10,000,000
mass.sort()


for i in range(50000,1000001,5000): # i - кол-во элементов в массиве в эксперименте
    m = 0
    for k in range(200):
        x = random.random()
        index_element = math.floor(1 + (x * (i - 1)))
        N = mass[index_element]
        m += interp(i,mass,N)
        #print(interp(i,mass,N))
        
    medium_m = m / 200
    f.write(str(i) + ' ' + str(medium_m) + '\n')
    print(medium_m)
  
f.close()








#for j in range(1, 100001): #кол-во элементов в самом большом массиве
    
    #mass.append(two)

#for i in range(100000,200020,10000):
    #x = random.random()
    #element = math.floor(1 + (x * (mass[i-1] - 1)))
    #element = 121*121
    #start_time = time.time()
    #if mass[interp(i,mass,element)] != element: 
        #print("error")
    #finish = time.time() - start_time
    #print(finish)
    #f.write(str(i) + ':' + str(finish) + '\n')#