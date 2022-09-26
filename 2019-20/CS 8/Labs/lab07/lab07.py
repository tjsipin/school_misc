# Submitted by TJ Sipin, 3430501, for CS 8 W20

def getAllWords(filepath):
    '''
    Returns a list of all words 
    from the given filepath.
    The function opens the file for reading,
    and closes the file before returning.
    '''
    wordList = []
    file = open(filepath)
    content = file.read()
    wordList = content.split()
    file.close
    return wordList

def getCleanWordList(filepath, charsToRemove):
    '''
    Read a file with given filepath, return a list
    of all words from the file with the specified
    characters that are stored in the string called
    charsToRemove are removed.
    Empty strings should not be added to the
    resulting list of cleaned words.
    Use getAllWords function as a helper function 
    to get the list of all words.
    '''
    newText = []
    text = getAllWords(filepath)
    for i in text:
        i = i.strip(charsToRemove)
        newText.append(i)
    return newText

def getUniqueWords(filepath, charsToRemove):
    '''
    Return a list of unique words that appeared 
    in the file with the given filepath.
    '''
    uniqueLst = []
    lst = getCleanWordList(filepath, charsToRemove)
    for word in lst:
        if word not in uniqueLst:
            uniqueLst.append(word)
    return uniqueLst

def getWordCount(filepath, charsToRemove):
    '''
    Get the frequency of each unique word 
    in the file with given filepath, and return 
    a list of lists where each element is a list 
    of two elements in the format [<word>, <count>].
    '''
    result = []
    
    for uniq in getUniqueWords(filepath, charsToRemove):
        count = 0
        for word in getCleanWordList(filepath, charsToRemove):          
            if word != uniq:
                count += 0
            else:
                count += 1
        result.append([uniq,count])
    return result

def mostCommonWord(filepath, charsToRemove):
    '''
    Reads the file from filepath in your function
    and returns the most common word in 
    the file (i.e.,the word with the highest frequency).
    In the case of ties (i.e., more than one word
    with the same max count, then return the word
    that occurs earliest in dictionary order
    (remember string comparisons).
    - Use getWordCount() helper function to count 
    the frequency of each word.
    '''
    List = getWordCount(filepath, charsToRemove)
    highest = List[0][1]
    word = List[0][0]
    for i in range(len(List)):
        if List[i][1] > highest:
            highest = List[i][1]
            word = List[i][0]
    return word
