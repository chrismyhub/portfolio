#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 24JUL2023
#DATE LAST MODIFIED: 03AUG2023

#Retreive folder name for copying from user
read -p "Type the name of the folder you would like to copy: " folderName

#Store folder name in path format
source=./$folderName

#Copy folder user input and append time/date stamp
cp -a -- "$source" "$source ($(date +"%d-%b-%Y) [%r]")"
