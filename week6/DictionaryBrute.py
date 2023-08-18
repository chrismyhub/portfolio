#!/usr/bin/python3
#CREATED BY: Christopher Chong
#DATE CREATED: 16AUG2023
#DATE LAST MODIFIED: 18AUG2023

#Load Python's 'hashlib' module
import hashlib
#Load 'datetime' data
from datetime import datetime
#Load 'intertools' data
import itertools

#Set variable startTime to time now 
startTime = datetime.now()

#Define array of characters and numbers
data = "abcdefghijklmnopqrstuvwxyz"

#Convert into array
array = list(data)

#
#hidden password hash
passwordHash = "0ebdc3317b75839f643387d783535adc360ca01f33c75f7c1e7373adcd675c0b"
#Passing through variable wordlistHash
wordlistHash =""
k_num=0

#While loop to iterate combination of characters/numbers
while(wordlistHash != passwordHash):

    #Add 1 to k_num variable each loop
    k_num += 1   

    #Start of "for" loop to begin finding combination/permutations of words.     
    for group in itertools.product(array, repeat=k_num):
        print(group)
        word = group
        word="".join(group)
        print(word)
    
        #hash the word
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
        print(f"Trying password {word}:{wordlistHash}")

        #if the hash is the same as the correct password's hash then we have cracked the password!
        if(wordlistHash == passwordHash):
            print(f"Password has been cracked! It was {word}")
            #Display the time taken to run the bruteforce
            print(datetime.now() - startTime)
            break