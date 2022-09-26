import math
def areaOfCircle(radius):
    area = math.pi * radius **2
    return area

def test_areaOfCircle():
    import math
    for radius in range(0,12):
        assert areaOfCircle(radius) == pytest.approx(math.pi * radius **2)

def replace_first(aList):
    aList[0] = 42
myList1 = [8]
myList2 = [3, 6, 9, 12]
replace_first(myList1)
print(myList1)


for var in range(5,1,-1):
    print(var,end = ', ')
print(1)

def swap_first(aList, var):
    print("Inside swap_first, before the swap")
    print("Var =", var, "list =", aList)
    tmp = aList[0]
    aList[0] = var
    var = tmp
    print("Inside swap_first, after the swap")
    print("Var =", var, "list =", aList)
