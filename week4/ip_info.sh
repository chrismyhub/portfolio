#!/bin/bash
#CREATED BY: Christopher Chong
#DATE CREATED: 07AUG2023
#DATE LAST MODIFIED: 07AUG2023


#Set variable for ifconfig command
net_info="$(ifconfig)"

#Replace inet with IP Address, netmask with Subnet Mask and broadcast with Broadcast Address.
#Using -n will not output sed unless using print command.
echo "$net_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\tSubnet Mask:/
    s/broadcast/\n\t\tBroadcast Address/
    p
    }' 
