# Submitted by TJ Sipin, 3430501, for CS 8 (W20)

def getAdvice(num):
    """
    Given an input number >= 0,
    return an element from the list,
    which we'd land on if we loop 
    around the list num times.
    """

    stepsToSuccess = [ "Keep track of deadlines", \
                     "Read the book", \
                     "Do the homework yourself", \
                     "Attend lectures", "Ask questions", \
                     "Attend labs", "Enjoy studying" ]
    
    if num >= 0 :
        advice = stepsToSuccess[num % len(stepsToSuccess)] # TODO: replace ...
        return advice

fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)

def print_list_index( aList ):
    """
    Given an input list aList,
    display "<item> is at index <N>"
    for each item in the list.
    """
    i = 0
    for item in aList:
        print (item, "is at index ",i)
        i = i + 1

def get_index_list(text, char):
    """
    Given text and a single character char,
    which are both strings, return a list
    that contains the indices at which char 
    occurred in the text.
    If text or char is not a string, or if
    a char is longer than 1 character,
    return None. 
    If char is not found, return an
    empty list.
    """
    index_list = []
    if (type(text) != str or type(char) != str) or (len(char) > 1):
        return None
    else:
        i = 0
        x = range(len(text))
        for i in x:
            if char == text[i]:
                index_list.append(i)
    return index_list


import string
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

def createCipher( alphabet ):
    """
    Given the input plaintext alphabet,
    return the reversed input.
    """
    revAlphabet = ''
    i = len(alphabet)-1
    for i in range(len(alphabet)-1,-1,-1):
        revAlphabet = revAlphabet + alphabet[i]
    return revAlphabet
'''
BASIC PSEUDOCODE
# Given the plaintext, alphabet, cipher
# Create a string that will hold the ciphertext
# Loop through the plaintext
#   For every character in plaintext
#   Find its position/index in the alphabet
#   Get the character at the same index in cipher
#   Add the cipher-char to the ciphertext string
# Return the resulting ciphertext
'''

def simpleEncode(plaintext, alphabet, cipher):
    """
    Given plaintext to encode,
    an alphabet and a cipher alphabet, return
    the encoded ciphertext.
    If the lengths of the alphabet and
    cipher are not the same, return -1.
    If a character from plaintext is not
    found in the alphabet, return None.
    """
    if len(alphabet) != len(cipher):
        return -1
    cipheredStr = ''
    
    for i in range(0, len(plaintext)): 
        x = 0
        for n in alphabet:
            if n == plaintext[i]:
                cipheredStr = cipheredStr + cipher[x]
            elif plaintext[i] not in alphabet:
                return None
            x = x + 1
            
    return cipheredStr

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
