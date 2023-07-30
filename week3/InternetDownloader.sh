#!/bin/bash

#Start of while loop
while true
    do
        #Prompt user to enter a URL or quit
        read -rp "Please type the URL of a file to download or type 'exit' to quit: " URL
    
        #If user types exit, then quit the script immidiately...
        if [[ $URL = exit ]]
            then 
                #Exit code
                exit 0
        fi
        
        #...otherwise continue by prompting user to enter the URL for downloading
        read -rp "Type the location of where you would like to download the file to: " LOCATION

        #Download file from $URL and save it to $LOCATION    
        wget -P "$LOCATION" "$URL"

        #Exit code
        exit 1

    #End of while loop
    done