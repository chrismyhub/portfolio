#!/bin/bash

#Color code variables
red_color='\033[31m'
green_color='\033[32m'
blue_color='\033[34m'
purple_color='\033[35m'
NC='\033[0m'

#Display welcome message
echo "Welcome to the Simple Calculator..."

#Provide line space inbetween welcome message and menu
echo

#Display menu options
printf "${blue_color}1. Add${NC}\n"
printf "${green_color}2. Subtract${NC}\n"
printf "${red_color}3. Multiply${NC}\n"
printf "${purple_color}4. Divide${NC}\n"

#Provide line space for menu
echo
    
#Prompt user to select an option from 1-4 and save it as a variable
read -p "Please select an option between 1-4: " option

#Start of all case statements referencing $option variable
case $option in

#If number 1 is entered by user, then...
#Close bracket sets the end of the case entered
1)

#Prompt user to enter two numbers to add
read -p "Please enter first number to add: " first
read -p "Please enter second number to add: " second

#Display operation in math form
printf "${blue_color}$first + $second${NC}\n"

#Displaythe answer to the equation
echo -n "Answer: "
expr $first + $second

#Prompt user to press any enter to continue
echo
read -p "Press any enter to continue..."

    
#End of case statement 1
;;

#If number 2 is entered by user, then...
2)

#Prompt user to enter two numbers to subtract
read -p "Please enter minuend: " first
read -p "Please enter subtrahend: " second

#Display operation in math form
printf "${green_color}$first - $second${NC}\n"

#Displaythe answer to the equation
echo -n "Answer: "
expr $first - $second

#Prompt user to press any enter to continue
echo
read -p "Press any enter to continue..."

#End of case statement 2
;;

#If number 3 is entered by user, then...
3)

#Prompt user to enter two numbers to multiply
read -p "Please enter first number to multiply: " first
read -p "Please enter second number to multiply: " second

#Display operation in math form
printf "${red_color}$first x $second${NC}\n"

#Displaythe answer to the equation
echo -n "Answer: "
expr $first \* $second

#Prompt user to press any enter to continue
echo
read -p "Press any enter to continue..."

#End of case statement 3
;;

#If number 4 is entered by user, then...
4)

#Prompt user to enter two numbers to divide
read -p "Please enter dividend: " first
read -p "Please enter divisor: " second

#Display operation in math form
printf "${purple_color}$first ÷ $second${NC}\n"

#Displaythe answer to the equation
echo -n "Answer: "
expr $first / $second

#Prompt user to press any enter to continue
echo
read -p "Press any enter to continue..."

#End of case statement 3
;;

#Defines if no match is found
*)
;;

#End of all case statements
esac