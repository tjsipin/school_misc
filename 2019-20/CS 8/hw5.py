def squareSum(x, y):
    input("enter a num: ")
    """ Returns the sum of squared inputs """
    return x**2 + y**2
    


def ok(z):
    if z > 0:
        return "boy"
    else:
        return "dog"

def bmi(weight, height):
    BMI = (weight * 703)/(height ** 2)
    if BMI < 18.5:
        return "Underweight"
    elif 18.5 <= BMI <= 25:
        return "Normal"
    else:
        return "Overweight"

def temperature(t):
    if t > 32:
        print('It is cool.')
    elif t > 86:
        print('It is hot!')
    else:
        print('It is freezing!')

numList = [3,2,7,-1,9]

i = 0
mySum = 0
while i < (len(numList)):
    mySum = mySum + numList[i]
    i = i + 1
print(mySum)


myProd = 1
j = 0
while j < len(numList):
    myProd = myProd * numList[j]
    j = j + 1
print(myProd)

while count < 6:
    if count % 2 == 1:
        print (count)
    count = count  + 1

if count < 3:
