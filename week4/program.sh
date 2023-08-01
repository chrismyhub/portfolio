#!/bin/bash

#Example of using a variable, defining the variable
ultimateanswer="$(./meaning_of_life.sh)"

#To ensure escape sequences are respected (handles the backslashes correctly), we include -e
echo -e "message: \033[32mhello\033[00m"

echo -e "message: \033[32mThis is an important message!\033[00m"

echo -e "message: \033[32mhello\033[00m"


#To output the same as above, however here we are calling on pretty_printing.sh for the formatting and simply attach an argument
./pretty_printing.sh "hello"

./pretty_printing.sh "This is an important message!"

./pretty_printing.sh "hello"


#Calling on the meaning_of_life.sh script
./pretty_printing.sh "The meaning of life is: "
./meaning_of_life.sh


#Example of Command Substitution
./pretty_printing.sh "$(./meaning_of_life.sh)"


#Example of using a variable, calling the variable
./pretty_printing.sh "$ultimateanswer"