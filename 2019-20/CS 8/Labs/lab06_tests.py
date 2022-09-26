# Sumbitted by TJ Sipin, 3430501 for CS 8

from lab06 import listPrimes
from lab06 import multiplyScalarMatrix
from lab06 import unscrambleTuples
from lab06 import encryptCaesarCipher
from lab06 import decryptCaesarCipher
import pytest

def test_listPrimes_100():
    assert listPrimes(2,100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
def test_listPrimes_1():
    assert listPrimes(1,1) == None
def test_listPrimes_even():
    assert listPrimes(9,10) == []
def test_multipleScalarMatrix_2x2():
    assert multiplyScalarMatrix([[10, 6], [4, 3]], 2) == [[20, 12], [8, 6]]
def test_multipleScalarMatrix_2x2_2():
    assert multiplyScalarMatrix([[6, 8], [10, 12]], 5) == [[30, 40], [50, 60]]
def test_multipleScalarMatrix_2x3():
    assert multiplyScalarMatrix([[1, 5, 6], [2, 4, 6]], 3) == [[3, 15, 18], [6, 12, 18]]
def test_unscrambleTuples_frodo():
    assert unscrambleTuples([(12345, False, 'Frodo')]) == [['Frodo', 12345, False]]
def test_unscrambleTuples_beyonce_and_friends():
    assert unscrambleTuples([('Sarah', 65473, True), (True, 1234, 'Beyonce'), (False, 'Molly',2344)]) == [['Sarah', 65473, True], ['Beyonce', 1234, True], ['Molly', 2344, False]]
def test_encryptCaesarCipher_abc():
    assert encryptCaesarCipher("abc", 2) == "cde"
def test_encryptCaesarCipher_247():
    assert encryptCaesarCipher('Congratulations ~ You have finished the mandatory part of the lab.',247) == 'RDCvGpIJApIxDCHjnjhDJjwpKtjuxCxHwtsjIwtjBpCspIDGNjEpGIjDujIwtjApql'
def test_decryptCaesarCipher_Congrats():
    assert decryptCaesarCipher('RDCvGpIJApIxDCHjnjhDJjwpKtjuxCxHwtsjIwtjBpCspIDGNjEpGIjDujIwtjApql',247) == 'Congratulations ~ You have finished the mandatory part of the lab.'
def test_decryptCaesarCipher_cde():
    assert decryptCaesarCipher("cde", 2) == "abc"
