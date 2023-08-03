#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 02AUG2023
#DATE LAST MODIFIED: 02AUG2023

#This will print the start of an error message in red    
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 

 
#Function to determine what error to display to user   
notNumber() 
      
{   
    read -p "$1: " 
    #If the number is less than 42, it will display "Too Low!"   
    while (( $REPLY < $2 || $REPLY > $2 )); do 

        if [[ $REPLY -lt $2 ]]
            then
            printError "Too Low!" 

        elif [[ $REPLY -gt $2 ]]
        then
            printError "Too High!" 
        #If ENTER is pressed ~NOT WORKING
        elif [[ -z $VAR ]]
        then printError "Please enter an integer!"
        
        else
            printError "Please enter an integer!"
        fi
        
        read -p "$1: " 
      
    done 

    #If the number is more than 42, it will display "Too High!"  
    # while (( $REPLY > $2 )); do 
      
    #     printError "Too High!" 
        
    #     read -p "$1: " 
      
    # done
      
} 



echo "Welcome to the Guessing Game!" 

echo "Try to guess the number I am thinking of..."
      
notNumber "...type your guess here: " 42
      
echo "Correct!" 