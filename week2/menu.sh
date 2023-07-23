#!/bin/bash

#Run passwordCheck script
./passwordCheck.sh

#Check if exit code is "0" then display menu
if [ $? -eq 0 ]; then

    #Provide line space for menu
    echo

    #Display menu options
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"
else
    #If exit code is "1" then exit script
    echo ""
fi


#Exit code
exit 0