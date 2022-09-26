# Submitted by TJ Sipin, 3430501, for CS 8 W20

import pytest
from lab07 import getAllWords
from lab07 import getCleanWordList
from lab07 import getUniqueWords
from lab07 import getWordCount
from lab07 import mostCommonWord

def test_getAllWords_1():
    assert getAllWords("input1.txt") == ["hello", "hello", "hello", "world"]
def test_getAllWords_2():
    assert getAllWords("input2.txt") == ["hello", "world", "world", "world"]
def test_getCleanWordList_question():
    assert getCleanWordList("input3.txt", ",.?;") == ["Hello!", "Today", "is", "a", "lovely", "day", "isn't", "it"]
def test_getCleanWordList_exclam():
    assert getCleanWordList("input3.txt", ",.!;") == ["Hello", "Today", "is", "a", "lovely", "day", "isn't", "it?"]
def test_getCleanWordList_both():
    assert getCleanWordList("input3.txt", ",.;") == ["Hello!", "Today", "is", "a", "lovely", "day", "isn't", "it?"]
def test_getUniqueWords_1():
    assert getUniqueWords("input1.txt", ",.!?;") == ["hello", "world"] or ["world", "hello"]
def test_getUniqueWords_2():
    assert getUniqueWords("input2.txt", ",.!?;") == ["hello", "world"] or ["world", "hello"]
def test_getWordCount_1():
    assert getWordCount("input1.txt", ",.!?;") == [["hello", 3], ["world", 1]] or [["world", 1], ["hello", 3]]
def test_getWordCount_2():
    assert getWordCount("input2.txt", ",.!?;") == [["hello", 1], ["world", 3]] or [["world", 3], ["hello", 1]]
def test_mostCommonWord_1():
    assert mostCommonWord("input1.txt", ",.!?;") == 'hello'
def test_mostCommonWord_2():
    assert mostCommonWord("input2.txt", ",.!?;") == 'world'
