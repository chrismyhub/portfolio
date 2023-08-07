#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 07AUG2023
#DATE LAST MODIFIED: 07AUG2023


#Set variable for ifconfig command
net_info="$(ifconfig)"

#Replace inet with IP Address
echo $net_info | sed 's/inet/IP Address:/' 
