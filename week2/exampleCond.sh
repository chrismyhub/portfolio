#!/bin/bash

#Display Hello greeting
echo "Hello!"

#Prompt user to enter user name and save as variable
read -rp "What is your name: " name

#Display greeting with user's name using name variable
echo "Hello $name"

#If condition is true, then display message to user
if test "$name" = Chris; then
    echo "You're really good at coding :)"
else 
    echo "I don't know you..."
fi

#Exit code
exit 0