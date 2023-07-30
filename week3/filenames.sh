#!/bin/bash

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
    # (The "&>/dev/null" suppresses errors and warnings)
    if grep &>/dev/null "^[.]" "$myline" 
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
done < "$1"

#Exit code
exit 0