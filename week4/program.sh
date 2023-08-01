#!/bin/bash

#import the functions from pirinting_and_philosophy.sh
source ./printing_and_philosophy.sh



#Example of a function (using the pretty_printing.sh script)
#This creates a new Command called prettyPrint(), that does the code inside the curly braces
function prettyPrint()
{
    echo -e "message: \033[32m$1\033[00m"
}


#Another example of a function (using the meaning_of_life.sh script)
#This creates a new Command called meaningOfLife(), that does the code inside the curly braces
function meaningOfLife()
{
    echo 42
}



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


#Example of the prettyPrint() function in action
prettyPrint "Hello"


#Example of the meanOfLife() function in action
./pretty_printing.sh "The meaning of life is: "
meaningOfLife


#Another example of the meanOfLife() function in action
ultimateanswer="$(meaningOfLife)"
./pretty_printing.sh "The meaning of life is: "
meaningOfLife 


#Example of calling a function from another script file (printing_and_philosophy.sh)
alertMessage "Becareful of wasps!"
echo -e "If you ever feel lost: " "$(howToThink)"