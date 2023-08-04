#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 02AUG2023
#DATE LAST MODIFIED: 04AUG2023

#This will print the start of an error message in red    
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 

 
#Function to determine what error to display to user   
notNumber() 
      
{   #Passing through the first argument of notNumber and also setting up ENTER key being pressed
    read -p "$1: " || read -s -n 1 key

    #Start of while loop, defining if user input is less than or greater than the second parameter (in this case number 42) and also that the user input is not equal to number 42.
    while (( REPLY < $2 || REPLY > $2  && REPLY != $2 )); do

        #If only ENTER key is pressed and nothing else, instruct user to enter an integer
        if [[ $key = "" && $REPLY = "" ]]
        then 
            printError "Please enter an integer!"

        #If the number is less than 42, it will display "Too Low!" 
        #The "$REPLY =~ ^[0-9]+$ " checks that it is only an integer entered
        elif [[ $REPLY -lt $2 && $REPLY =~ ^[0-9]+$ ]]
        then
            printError "Too Low!" 

        #If the number is more than 42, it will display "Too High!" 
        #The "$REPLY =~ ^[0-9]+$ " checks that it is only an integer entered
        elif [[ $REPLY -gt $2 && $REPLY =~ ^[0-9]+$ ]] 
        then
            printError "Too High!" 

        #If none of the above conditions are met, instruct user to input an integer
        else
            printError "Please enter an integer!"
        fi
        
        read -p "$1: " 
        
    done 

} 


#Welcome message when scrip tis run.
echo "Welcome to the Guessing Game!" 
#New line to space out welcome message.
echo
#Instruct user to enter a number
echo "Try to guess the number I am thinking of..."     
notNumber "...type your guess here: " 42

#When user has entered the corect number, the while loop is complete and the following message will appear.
echo "Correct!" 