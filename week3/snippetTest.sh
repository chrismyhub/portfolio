#!/bin/bash

var=#_ENTER A VARIABLE HERE_
case $var in
#_TEST ITEM_)
# _CODE IF MATCH_
#End of case statement 1
;;
#_TEST ITEM_)
# _CODE IF MATCH_
#End of case statement 2
;;
#_TEST ITEM_)
# _CODE IF MATCH_
#End of case statement 3
;;
#_TEST ITEM_)
# _CODE IF MATCH_
#End of case statement 4
;;
#_TEST ITEM_)
# _CODE IF MATCH_
#End of case statement 5
;;
*) #Default case
# _CODE IF DEFAULT CASE_
#End of default case statement
;;
esac

if [[ _AND TEST_ ]] && ( [[ _OR OPTION 1_ ]] || [[ _OR OPTION 2_ ]] ); then
#_CODE IF TRUE_
else
#_CODE IF FALSE_
fi