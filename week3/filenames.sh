#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 30JUL2023
#DATE LAST MODIFIED: 03AUG2023

#Prompt user to enter the file to check and save as a variable
read -p "Please enter the file to be checked: " FILE

#Start of while loop, referencing each line
while read myline
do
  #If line is blank...
  if [ -z "${myline}" ] 
  then
    #...then do nothing
    echo -n ""
  else
    #If line is not blank display the line and...
    echo -n $myline " - "
    #...if the line begins with a "." then it is a directory...
    if [ "${myline%"${myline#?}"}" = "." ]
    then
        #...then display "That's a directory"
        echo "That's a directory" 
    #If the line is a file that exists...
    elif [ -e "$myline" ]
    then
        #...then display "That file exists"
        echo "That file exists"
    else
        #If the line does not match any of the above, then display "I don't know what this is!"
        echo "I don't know what this is!"
  fi
 fi
done < "$FILE"

#Prompt user to press enter key to continue
echo
read -p "Press any enter to continue..."

#Exit code
exit 0