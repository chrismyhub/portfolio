#!/bin/bash


#Prompt user to type a secret password (hide that input) and save as a variable.
read -rsp "Please enter a Secret Password: " secretPassword

#Check the user’s password against the hash stored in 'secret.txt'.

#If the user’s password is correct, print “Access Granted” and quit with the exit code 0.

#If the user’s password is incorrect print “Access Denied” and quit with the exit code 1.

#Exit code
exit 0