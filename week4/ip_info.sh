#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 07AUG2023
#DATE LAST MODIFIED: 08AUG2023


#Set variable for ifconfig command
net_info="$(ifconfig)"

#Replace inet with IP Address, netmask with Subnet Mask and broadcast with Broadcast Address.
#Using -n will not output sed unless using print command.
#Set this whole section as a variable "addresses"
addresses=$(echo "$net_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address/
    p
    }' )

#Display the variable "addresses" 
echo -e "The IP addresses on this computer are:\n$addresses"


