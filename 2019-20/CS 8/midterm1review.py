def return_string(text):
    if (type(text) == str):
        return text
    else:
        return False
def test_not_int(val1,val2,val3):
    if type(val1) != int:
        return val1
    if type(val2) != int:
        return val2
    if type(val3) != int:
        return val3
    else:
        return None
def not_int(val1,val2,val3):
    if val1 != int:
        return val1
    elif val2 != int:
        return val2
    elif val3 != int:
        return val3
    else:
        return None
ThingsToWorkOn = ["mathematical operations",
                  "function definitions: specifically output of return vs. print",
                  "test cases", "docstrings", "slicing",
                  "minor things such as including quotation marks and parentheses",
                  "while/if statements", "import math - math.sqrt() is an approx."]

x = print("This only prints to your screen")


for number in [1,2,3,4,5,6,7]:
    print(number)

def pnt():
    print("hey")

def rtn():
    return "returned"

def rtnint(x):
    return (x)

def pntint(y):
    print(y)

def squared1( x ) :
    return (x * x)

def squared2( x ) :
    print (x * x)

def doubled(x):
    return 2 * x

pet = 'cat'

x = 8
if type(x) == int:
    x = 7
    x = "dog"
else:
    x = 5

aList = [1,2.2,'cat',"3",4]
listLength = len(aList)
idx = 0
numSum = 0
while (idx < listLength):
    if type(aList[idx]) == int:
        numSum = numSum + aList[idx]
    idx = idx + 1


question = "What is your name?"

Leroy = [1,"hey man", ["ok","then",90]]

def my_max(val1,val2):
    if val1>val2:
        return val1
    if val2>val1:
        return val2
    if val1 == val2:
        print ("same")
        return val1
        
