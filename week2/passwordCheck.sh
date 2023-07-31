#!/bin/bash


#Prompt user to type a secret password (hide that input) and save as a variable.
read -rsp "Please enter a Secret Password: " secretPassword

#Add space for resulting message to user
echo

#Check the user’s password against the hash stored in 'secret.txt'and if the user’s password is correct, print “Access Granted” and quit with the exit code 0.
#Used "&>/dev/null" to suppress sha256sum warnings
if [[ $(echo -n "$secretPassword" | sha256sum -c /home/student/student/scripts/portfolio/week2/secret.txt) = "-: OK" ]] &>/dev/null
then

    #Display Access Granted to user
    echo "Access Granted"

    #Exit code 
    exit 0

#Check the user’s password against the hash stored in 'secret.txt' and if the user’s password is incorrect print “Access Denied” and quit with the exit code 1.
else 

    #Display Access Denied to user
    echo "Access Denied"
    
    #Exit code
    exit 1
fi 
