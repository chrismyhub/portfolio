#!/usr/bin/python3
#CREATED BY: Christopher Chong
#DATE CREATED: 16AUG2023
#DATE LAST MODIFIED: 17AUG2023

#Load Python's 'hashlib' module
import hashlib
#Load Python's 'random' module
import random
#Load 'datetime' data
from datetime import datetime

#Set variable startTime to time now 
startTime = datetime.now()

#Define array of characters and numbers
data = "abcdefghijklmnopqrstuvwxyz"

#Convert into array
array = list(data)


#hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
#Passing through variable wordlistHash
wordlistHash =""
#Passing through variable k_num
k_num=1

#While loop to iterate combination of characters/numbers
while(wordlistHash != passwordHash):

    #Length of word 1 character long
    word = random.choices(array,k=k_num)
    print(word)
    word="".join(word)
    
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        #Display the time taken to run the bruteforce
        print(datetime.now() - startTime)
        break
        
    #Length of word 2 character long
    if wordlistHash != passwordHash:
        word = random.choices(array,k=k_num + 1)
    print(word)
    word="".join(word)
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        #Display the time taken to run the bruteforce
        print(datetime.now() - startTime)
        break
        
    #Length of word 3 character long
    if wordlistHash != passwordHash:
        word = random.choices(array,k=k_num + 2)
    print(word)
    word="".join(word)
    
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        #Display the time taken to run the bruteforce
        print(datetime.now() - startTime)
        break
        
    #Length of word 4 character long
    if wordlistHash != passwordHash:
        word = random.choices(array,k=k_num + 3)
    print(word)
    word="".join(word)
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        #Display the time taken to run the bruteforce
        print(datetime.now() - startTime)
        break
    
    #Length of word 5 character long
    if wordlistHash != passwordHash:
        word = random.choices(array,k=k_num + 4)
    print(word)
    word="".join(word)
    #hash the word
    wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()
    print(f"Trying password {word}:{wordlistHash}")

    #if the hash is the same as the correct password's hash then we have cracked the password!
    if(wordlistHash == passwordHash):
        print(f"Password has been cracked! It was {word}")
        #Display the time taken to run the bruteforce
        print(datetime.now() - startTime)
        break
        
        
        
       