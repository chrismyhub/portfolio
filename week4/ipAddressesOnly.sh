#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 08AUG2023
#DATE LAST MODIFIED: 10AUG2023

# #Run ip_info.sh script and save as a variable
ipRaw=$(/home/student/student/scripts/portfolio/week4/ip_info.sh)

# #Convert .sh script into .txt file.
# echo -n "$ipRaw" >> test.txt

# #Remove all spaces on each line.
# awk '{$1=$1};1' < test.txt >> test2.txt

# #Filter out lines with prefix of "IP Address" and display to user.
# sed -n -e '/^IP Address/p' /home/student/student/scripts/portfolio/week4/test2.txt

# #Remove test.txt file.
# rm test.txt

# #Remove test2.txt file.
# rm test2.txt

#Using pipes to feed ip_info.sh file into sed command without needing to download it first
echo "$ipRaw" | sed -n '/^IP Address/p
p
'