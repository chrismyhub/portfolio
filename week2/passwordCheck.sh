#!/bin/bash


#Prompt user to type a secret password (hide that input) and save as a variable.
read -rsp "Please enter a Secret Password: " secretPassword

#Add space for resulting message to user
echo

#Check the user’s password against the hash stored in 'secret.txt'and if the user’s password is correct, print “Access Granted” and quit with the exit code 0.
if [[ $(echo -n "$secretPassword" | sha256sum -c secret.txt) = "-: OK" ]]
then

    #Display Access Granted to user
    echo "Access Granted"

    #Exit code 
    exit 0

#Check the user’s password against the hash stored in 'secret.txt' and if the user’s password is incorrect print “Access Denied” and quit with the exit code 1.
elif [[ $(echo -n "$secretPassword" | sha256sum -c secret.txt) = "-: FAILED" ]]
then

    #Display Access Denied to user
    echo "Access Denied"
    
    #Exit code
    exit 1
fi 
