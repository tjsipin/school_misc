# Submitted by TJ Sipin, 3430501, for CS 8 (W20)

import pytest
from lab05 import getAdvice

def test_getAdvice_1():
        assert getAdvice(6) == "Enjoy studying"
def test_getAdvice_2():
        assert getAdvice(100) == "Do the homework yourself"
def test_getAdvice_3():
        assert getAdvice(-1) == None
def test_createCipher_ABC():
    assert createCipher("ABC") == "CBA"      

#######################################################################################################
from lab05 import createAlphabet

'''Note: for some of these to work, your createAlphabet function must be working properly'''


from lab05 import createCipher

def test_createCipher_1():
    assert createCipher('lmnop') == 'ponml'
    
def test_createCipher_2():
    assert createCipher('asdfghjkl') == 'lkjhgfdsa'
    
def test_createCipher_3():
    assert createCipher(' &#A.,?QP') == 'PQ?,.A#& '
    
#######################################################################################################
from lab05 import simpleEncode

def test_simpleEncode_1():
    assert simpleEncode('beep beep boop', createAlphabet(), createCipher(createAlphabet()))  == '~,,Qf~,,Qf~RRQ'
    
def test_simpleEncode_2():
    assert simpleEncode('only these characters have to be in alphabet', 'pq', 'st' ) == None

def test_simpleEncode_3():
    assert simpleEncode('only these characters have to be in alphabet', 'onlythescarvbip ', 'pasdfghjklzxcvbn' ) == 'pasdnfghjhnkglzlkfhzjnglxhnfpnchnvanlsbglchf'

def test_simpleEncode_4():
    assert simpleEncode('thisIsMyPlainText', 'someAlphabet','wrongLength') == -1
    
#######################################################################################################
from lab05 import simpleDecode
def test_simpleDecode_1():
    assert simpleDecode('~,,Qf~,,Qf~RRQ', createAlphabet(),createCipher(createAlphabet())) == 'beep beep boop'

def test_simpleDecode_2():
    assert simpleDecode('tbamret s==sida', createCipher('abtes= rmid'), createCipher(createCipher('abtes= rmid'))) == 'midterms == bad'

def test_simpleDecode_3():
    assert simpleDecode('pasdnfghjhnkglzlkfhzjnglxhnfpnchnvanlsbglchf','onlythescarvbip ', 'pasdfghjklzxcvbn') == 'only these characters have to be in alphabet'

def test_simpleDecode_4():
    assert simpleDecode('abc','abg','ghj') == None

def test_simpleDecode_5():
    assert simpleDecode('abc','abg','ghzj') == -1

#######################################################################################################
        
from lab05 import getCharacterForward
'''changes depending on alphabet used'''
def test_getCharacterForward_1():
    # Note: This is using the alphabet used in createAlphabet()
    assert getCharacterForward('a', 5) == 'f'
    
def test_getCharacterForward_2():
    # Note: This is using the alphabet used in createAlphabet()
    assert getCharacterForward('#', 5) == 'e'

def test_getCharacterForward_3():
    # Note: This is using the alphabet used in createAlphabet()
    assert getCharacterForward('a', 967) == 'N'
#######################################################################################################
    
from lab05 import getCharacterBackward
'''changes depending on alphabet used'''
def test_getCharacterBackward_1():
    # Note: This is using the alphabet used in createAlphabet()
    assert getCharacterBackward('f', 5) == 'a'
    
def test_getCharacterBackward_2():
    # Note: This is using the alphabet used in createAlphabet()
    assert getCharacterBackward('e', 5) == '#'

def test_getCharacterBackward_3():
    # Note: This is using the alphabet used in createAlphabet()
    assert getCharacterBackward('N', 967) == 'a'
