#!/bin/bash

#Run passwordCheck script (absolute path)
/home/student/student/scripts/portfolio/week2/passwordCheck.sh

#Check if exit code is "0" then display menu
if [ $? -eq 0 ]; then

    #Provide line space for menu
    echo

    #Display menu options
    echo "1. Create a folder"
    echo "2. Copy a folder"
    echo "3. Set a password"

    #Provide line space for menu
    echo
    
    #Prompt user to select an option from 1-3 and save it as a variable
    read -p "Please select an option between 1-3: " option

    #Case statement depending on what option the user selects
    
    #Start of all case statements referencing $option variable
    case $option in

    #If number 1 is entered by user, then...
    #Close bracket sets the end of the case entered
    1)

    #...run foldermaker.sh (absolute path)
    /home/student/student/scripts/portfolio/week2/foldermaker.sh
    
    #End of case statement 1
    ;;

    #If number 2 is entered by user, then...
    2)

    #...run copyfolder.sh
    ./copyfolder.sh

    #End of case statement 2
    ;;

    #If number 3 is entered by user, then...
    3)

    #...run setPassword.sh
    ./setPassword.sh

    #End of case statement 3
    ;;

    #Defines if no match is found
    *)
    ;;

    #End of all case statements
    esac


else
    #If exit code is "1" then exit script
    echo ""
fi


#Exit code
exit 1