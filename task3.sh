#!/bin/bash

<<"COMMENT"
ifconfig gives you your system network information. Parse out your local IP (192.168.xxx.xxx) 
address and display itonly.
$ ./whats_my_ip.sh
Example output:
192.168.18.2
COMMENT

#we will filter ifconfig output to find IP address
ip=$(ifconfig | awk '/inet (192\.168\.[0-9]+\.[0-9]+)/ {print $2}')

#we then checked if the string is empty or not
if [ -n "$ip" ]; then
    echo "IP Address: $ip"
else
    echo "IP Address not found"
fi