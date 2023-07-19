#!/bin/bash

#UV INdex Recommendation Calculator
    # 0-2 Low (Minimal protection required.)
    # 3-7 Moderate to high (Standard protection required.)
    # 8+ Very High to Extreme (Full protective measures required.)

#Prompt user to enter a uv index value between 0-11 and save as a variable
read -p "Enter a UV index value from 0 to 11: " uvvalue

#Condition if uvvalue is less than or equal to 2
if [ "$uvvalue" -le 2 ]
then
    #Display 0-2 Low (Minimal protection required.) message
    echo "UV level is Low.  Minimal protection required."

#Condition if uvvalue is greater or equal to 3 and equal to or less than 7
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]
then
    #Display 3-7 Moderate to high (Standard protection required.) message
    echo "UV level is Moderate to High.  Standard protection required."

#Condition if uvvalue is greater or equal to 8 but less than 11  
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]
then
    #Display 8+ Very High to Extreme (Full protective measures required.) message
    echo "UV level is Very High to Extreme.  Fullprotective measures required."
else
    #If user enters anything outside of 1-11 display error message
    echo "Invalid UV index value entered"
fi

#Exit code
exit 0