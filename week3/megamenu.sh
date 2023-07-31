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
    echo "4. Calculator"
    echo "5. Create Week Folders"

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

    #...run copyfolder.sh (absolute path)
    /home/student/student/scripts/portfolio/week2/copyfolder.sh

    #End of case statement 2
    ;;

    #If number 3 is entered by user, then...
    3)

    #...run setPassword.sh
    /home/student/student/scripts/portfolio/week2/setPassword.sh

    #End of case statement 3
    ;;

    #If number 4 is entered by user, then...
    4)

    #...run simCalc.sh
    /home/student/student/scripts/portfolio/week3/simCalc.sh

    #End of case statement 4
    ;;

    #If number 5 is entered by user, then...
    5)

    #...run megafoldermaker.sh
    /home/student/student/scripts/portfolio/week3/megafoldermaker.sh

    #End of case statement 5
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