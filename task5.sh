#!/bin/bash

<<"COMMENT"
Box print a string through script
$ ./box_print.sh THIS STRING
Should print
***************
* THIS STRING *
***************
COMMENT

#first we checked if the user entered a string or not
if [ -z "$*" ] ; then
    echo "Kindly re-run the script with entering a string after the task"   
    echo "Correct Format is following: $0 <string>"
    exit 1
fi

#we used $* to get all the parameteres passed to string
string="$*"

#we ran the loop till the length of the input string
for ((i = 1; i <= ${#string}; i++)); do
    echo -n "*"
done
echo "****"

#we printed the string in the middle of the box
echo "* $string *"

#we ran the loop till the length of the input string
for ((i = 1; i <=${#string}; i++)); do
    echo -n "*"
done
echo "****"

echo "This is the box with the string"
