# Sumbitted by TJ Sipin, 3430501 for CS 8


import string
def listPrimes(start, end):
    """
    Return a list with all prime numbers 
    between `start` and `end` (including `start`, 
    if applicable, but not including `end`).
    Return None if start or end are not int
    or if they are less than or equal to 1.
    If no primes exist in the given range,
    return an empty list.
    """
    # Check that start and end are not less than or equal to 1
    # Check that start and end are integers
    # Create an empty list
    # For each number in range(start, end)
    #     If num is a prime number
    #         append it to the list
    # Return the list
    if start <= 1 or end <= 1:
        return None
    if type(start) != int or type(end) != int:
        return None
    
    else:
        finalList = []
        for val in range(start, end):
            for i in range(2,val): 
                if val % i == 0:
                    break
            else:
                finalList.append(val)
    return finalList

def multiplyScalarMatrix(matrix1, scalar):
    """
    Input: matrix1 is a list, scalar is an integer.
    If incorrect input types are given, return None.
    Otherwise, return the list that represents
    a matrix that is the product of matrix1 and
    scalar.
    """
    # Check that matrix1 is a list
    # Check that scalar is an int
    # Create a matrix = 1
    # For each number in range(len(matrix1)):
    #     for each element in range(len(matrix1[number]):
    #         assign that element to itself times the scalar
    # Return the list
    if type(matrix1) != list or type(scalar) != int:
        return None
    else:
        matrix = 1
        for i in range(len(matrix1)):
            for j in range(len(matrix1[i])):
                matrix1[i][j] *= scalar
        return matrix1

def unscrambleTuples(list_of_tuples):
    """
    Given a list of tuples that contain values of type 
    string, int, and bool, unscramble the values to
    create a new list that turns each tuple from the
    list_of_tuples into a list with the values arranged
    by type as follows: [str, int, bool].
    """
    # Create the correct list
    # For each tuple in the list
    #     For each element in the tuple
    #         assign each element to the right place in the tuple
    #         append the tuples to the list
    # Return the list
    Str = ""
    Int = 0
    Bool = None
    correct_list = []
    
    for tup in list_of_tuples:
        for elem in tup:
            if type(elem) == str:
                Str = elem
            elif type(elem) == int:
                Int = elem
            elif type(elem) == bool:
                Bool = elem
        correct_tuple = [Str,Int,Bool]
        correct_list.append(correct_tuple)
    return correct_list

def loop_function():
    """
    Ask for user input: 
    "Enter a number between -100 and 100: ". 
    If the number entered is less than 0, 
    return a list with values starting at 
    the given number to 0 with increments of 1. 
    If the number entered is greater than 0, 
    return that number to 100 with increments of 2. 
    If 0 is entered, return 0.
    """
    returnedList = []
    givenNumber = int(input("Enter a number between -100 and 100: "))
    if givenNumber < 0:
        for values in range(givenNumber, 1, 1):
            returnedList.append(values)
    elif givenNumber > 0:
        for values in range(givenNumber, 101, 2):
            returnedList.append(values)
    elif givenNumber == 0:
        return 0
    return returnedList



def createAlphabet():
    """
    createAlphabet returns a string that includes 
    all lowercase letters,
    followed by all upper-case letters,
    then a space, a comma, a period, a hyphen('-'), 
    a tilde('~'), and a pound symbol ('#'). 
    NOTE: the order of characters in the alphabet is
    very important!
    In other words, the string being returned will be
    'abcdef...xyzABCDEF...XYZ ,.-~#' (the ellipses ...
    hide the alphabet letters)
    """
    lc = string.ascii_lowercase
    uc = string.ascii_uppercase
    return lc + uc + " ,.-~#"

def getCharacterForward(character, key):
    """
    Given a character char, and an integer key, 
    the function shifts char forward `key` steps.
    Return the new character.
    If `char` is not a single character, return `None`.
    If `key` is not an integer, return -1.
    """
    if type(character) == str and len(character) == 1:
        i = 0
        for char in createAlphabet():
            if char == character:
                return createAlphabet()[(i + key)%(len(createAlphabet())) ]
            i = i + 1
    elif type(key) != int:
        return -1

def getCharacterBackward(character, key):
    """
    Given a character char, and an integer key, 
    the function shifts char backward `key` steps.
    Return the new character.
    If `char` is not a single character, return `None`.
    If `key` is not an integer, return -1.
    """
    if type(character) == str and len(character) == 1:
        i = 0
        for char in createAlphabet():
            if char == character:
                return createAlphabet()[i - (key%(len(createAlphabet()))) ]
            i = i + 1
    elif type(key) != int:
        return -1

def simpleDecode(ciphertext, alphabet, cipher):
    """
    Given ciphertext to decode,
    an alphabet and a cipher alphabet, return
    the decoded plaintext.
    If the lengths of the alphabet and
    cipher are not the same, return -1.
    If a character from ciphertext is not
    found in the cipher alphabet, return None.
    """
    if len(alphabet) != len(cipher):
        return -1
    decodedStr = ''
    
    for i in range(0, len(ciphertext)): 
        x = 0
        for cipherLetter in cipher:
            if cipherLetter == ciphertext[i]:
                decodedStr = decodedStr + alphabet[x]
            elif ciphertext[i] not in cipher:
                return None
            x = x + 1
            
    return decodedStr

def encryptCaesarCipher(plainText, key):
    wantedStr = ""
    if key > 0:
        for char in plainText:
            wantedStr += getCharacterForward(char, key)
    elif key < 0:
        for char in plainText:
            wantedStr += getCharacterBackward(char, key)
    return wantedStr

def decryptCaesarCipher(cipherText, key):
    FinalDecode = ""
    if key > 0:
        for char in cipherText:
            FinalDecode += getCharacterBackward(char, key)
    if key < 0:
        for char in cipherText:
            FinalDecode += getCharacterForward(char, key)
    return FinalDecode
