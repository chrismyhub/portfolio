#!/bin/bash

#Display Hello greeting
echo "Hello!"

#Prompt user to enter user name and save as variable
read -rp "What is your name: " name

#Display greeting with user's name using name variable
echo "Hello $name"

#Exit code
exit 0