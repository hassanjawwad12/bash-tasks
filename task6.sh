#!/bin/bash

<<"COMMENT"
In last task (Task 5), pass arguments (through flags), like
$ ./box_print.sh -s "THIS STRING" -c "+"
The above example prints it
+++++++++++++++
+ THIS STRING +
+++++++++++++++
Passing nothing as a character (no -c ) will only print the string
THIS STRING
COMMENT

pattern=""
name=""

#here we checked the flags and the arguments passed to task6
while [[ $# -gt 0 ]]; do
    if [[ "$1" == "-s" ]]; then
        name="$2"
        shift
        shift
    elif [[ "$1" == "-c" ]]; then
        pattern="$2"
        shift
        shift
    else
        echo "Correct Format is following: $0 -s <string> -c <character>"
        exit 1
    fi
done

#we added check for the empty string
if [[ -z "$name" ]]; then
    echo "Kindly re-run the script with entering a string after the task"   
    echo "Correct Format is following: $0 -s <string> -c <character>"
    exit 1
fi

#when the user does not give any special character we use empty string
if [[ -z "$pattern" ]]; then
    pattern=" "
fi

#we checked the presence of patterns and printed the borders 
if [[ -n "$pattern" && "$pattern" != " " ]]; then
    for ((i = 1; i < ${#name} + 5; i++)); do
        echo -n "$pattern"
    done
    echo
fi

#we print the middle row here
if [[ -n "$pattern" && "$pattern" != " " ]]; then
    echo "$pattern $name $pattern"
else
    echo "$name"
fi

#we checked the presence of patterns and printed the borders 
if [[ -n "$pattern" && "$pattern" != " " ]]; then
    for ((i = 1; i < ${#name} + 5; i++)); do
        echo -n "$pattern"
    done
    echo
fi

echo "The box string is printed"
