#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 29JUL2023
#DATE LAST MODIFIED: 03AUG2023
      
#If there aren't two arguments to the script 
      
# if (( $#!=2 )); then 
      
#     #Print an error and exit 
      
#     echo "Error, provide two numbers" && exit 1 
      
# fi 

#Prompt user to enter beginning week and save as a variable
read -p "Please enter the first week to create: " FIRST
#Prompt user to enter ending week and save as a variable
read -p "Please enter the last week to create: " LAST
      
#For every number between the first argument and the last 
      
for ((i = $FIRST; i <= $LAST; i++)) 
      
do 
      
    #Create a new folder for that number 
      
    echo "Creating directory number $i" 
      
    mkdir "week $i" 
      
done 
     
					