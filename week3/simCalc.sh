#!/bin/bash

#Display welcome message
echo "Welcome to the Simple Calculator..."

#Provide line space inbetween welcome message and menu
echo

#Display menu options
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"

#Provide line space for menu
echo
    
#Prompt user to select an option from 1-4 and save it as a variable
read -p "Please select an option between 1-3: " option

#Start of all case statements referencing $option variable
case $option in

#If number 1 is entered by user, then...
#Close bracket sets the end of the case entered
1)

#Prompt user to enter two numbers to add
read -p "Please enter first number to add: " first
read -p "Please enter second number to add: " second
echo -n "Answer: "
expr $first + $second

    
#End of case statement 1
;;

#If number 2 is entered by user, then...
2)

#Prompt user to enter two numbers to subtract
read -p "Please enter minuend: " first
read -p "Please enter subtrahend: " second
echo -n "Answer: "
expr $first - $second

#End of case statement 2
;;

#If number 3 is entered by user, then...
3)

#Prompt user to enter two numbers to multiply
read -p "Please enter first number to multiply: " first
read -p "Please enter second number to multiply: " second
echo -n "Answer: "
expr $first \* $second

#End of case statement 3
;;

#If number 4 is entered by user, then...
4)

#Prompt user to enter two numbers to divide
read -p "Please enter dividend: " first
read -p "Please enter divisor: " second
echo -n "Answer: "
expr $first / $second

#End of case statement 3
;;

#Defines if no match is found
*)
;;

#End of all case statements
esac