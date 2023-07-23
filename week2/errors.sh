#!/bin/bash 
      
secret='shhh' #Don't tell anyone! 

#Prompt user to enter the secret code and save it as a variable
read -s -p "what's the secret code?"  REPLY

#New line to format next section of code clearer
echo

#if the user types in the correct secret, tell them they got it right! 
      
if [ "$secret" = $REPLY ]; then 
      
    echo "You got it right!" 
      
    correct=true 
      
else     echo "You got it wrong :(" 
      
    correct=false 
      
fi 
      

      
echo 
      
case $correct in 

true)       
echo "You have unlocked the secret menu!" 
echo      
#TODO: add a secret menu for people in the know. 
echo "WELCOME TO THE SECRET MENU..."
echo "1. Forecast for tomorrow."
echo "2. Seven day forecast."
echo "3. Six month forecast."      
;; 
      
*) 
      
echo "Go Away!" #people who get it wrong need to be told to go away! 
      
;; 
          
esac 
     
     
     
					