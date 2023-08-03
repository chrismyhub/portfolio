#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 19JUL2023
#DATE LAST MODIFIED: 03AUG2023

#User to type in folderName and save it as variable
read -p "Please type a folder name: " folderName

#User to type in a secret password and save it as a variable secretPassword
read -rsp "Please type a Secret Password: " secretPassword

#This creates a new folder with folderName as the name
mkdir "$folderName"

#This will convert secretPassword into a Hash and then save it in a file named secret.txt and save it inside a folder named folderName
echo -n "$secretPassword" | sha256sum > ./"$folderName"/secret.txt

#This will save the user's secretPassword into a file named secret.txt inside the folder named folderName
# echo "$secretPassword" > ./"$folderName"/secret.txt

#Test to see if variable folderName is working
echo $folderName

#Test to see if secretPassword is working
echo $secretPassword

#Test to see if folderName was created and secret.txt added to the folder
find ./"$folderName"

exit 0