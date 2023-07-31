#!/bin/bash

#Color code variables
red_color='\033[31m'
green_color='\033[32m'
blue_color='\033[34m'
purple_color='\033[35m'
NC='\033[0m'


#Run passwordCheck script (absolute path)
/home/student/student/scripts/portfolio/week2/passwordCheck.sh

#Check if exit code is "0" then display menu
if [ $? -eq 0 ]; then


    #Start of while loop
    while true
    do

        #Provide line space for menu
        echo

        #Display menu options
        echo "1. Create a folder"
        echo "2. Copy a folder"
        echo "3. Set a password"
        echo "4. Calculator"
        echo "5. Create Week Folders"
        echo "6. Check Filenames"
        echo "7. Download a File"

        #Provide line space for menu
        echo
        
        #Prompt user to select an option from 1-7 and save it as a variable
        read -p "Please select an option between 1-7 (or type 'exit' to quit): " option

        #If user types exit, then quit the script immidiately...
        if [[ $option = exit ]]
            then 
                #Exit code
                exit 0
        fi

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

        #If number 6 is entered by user, then...
        6)

        #...run megafoldermaker.sh
        /home/student/student/scripts/portfolio/week3/filenames.sh

        #End of case statement 6
        ;;

        #If number 7 is entered by user, then...
        7)

        #...run megafoldermaker.sh
        /home/student/student/scripts/portfolio/week3/InternetDownloader.sh

        #End of case statement 7
        ;;

        #Defines if no match is found ~added warning for user to re-try an available option
        *)
        printf "${red_color}WARNING: You entered an invalid option!${NC}\n"
        ;;

        #End of all case statements
        esac

    #End of while loop
    done

else
    #If exit code is "1" then exit script
    echo ""
fi


#Exit code
exit 1