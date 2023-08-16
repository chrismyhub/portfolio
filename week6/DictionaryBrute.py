#!/usr/bin/python3
#CREATED BY: Christopher Chong
#DATE CREATED: 16AUG2023
#DATE LAST MODIFIED: 16AUG2023

#Load Python's 'hashlib' module
import hashlib
#Load Python's 'random' module
import random
#Load 'datetime' data
from datetime import datetime

#Set variable startTime to time now 
startTime = datetime.now()

#Define array of characters and numbers
data = "abcdefghijklmnopqrstuvwxyz0123456789"

#Convert into array
array = list(data)

#Request user to enter password
password = str(input("password"))

#While loop to iterate combination of characters/numbers
combination = ""
while(combination != password):
    combination = random.choices(array,k=len(password))
    print(combination)
    combination="".join(combination)

#Display the result of the bruteforce
print("the password is: " + combination)

#Display the time taken to run the bruteforce
print(datetime.now() - startTime)

