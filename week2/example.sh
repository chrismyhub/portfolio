#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 17JUL2023
#DATE LAST MODIFIED: 03AUG2023

#This will save the user inputs for 3 names as variables
#The -r is for Raw input
#The -p is to allow the prompt "Hello, please enter your names: " to be inserted in the read command ~ to remove the echo command
read -rp "Hello, please enter your names: " nameOne nameTwo nameThree

#This saves "CYB6004 Scripting Languages" as a variable "unit"
unit="CYB6004 Scripting Languages"

#This will display a prompt using the names saved as variables from line 6
#The -e forces it to always expand special escape characters
#The \n  is for a NEW LINE
#The \" is to insert a quotation mark
#The $ in front of the variable is to confirm that it is a variable being used
echo -e "Hello $nameOne, $nameTwo. $nameThree! Welcome to \n\"$unit\""

#This will prompt for a secret password and save it as a variable "password"
#The -s is to hide the user input from being seen on the terminal
read -rsp "What is the secret password: " password

#Displaying the message to the user
echo "I won't tell anyone!"

#Displaying the message to the user also displaying the password saved from line 20
echo "I lied! Your password was -> $password <-HAHAHAHAH!!!"

#Exit code
exit 0