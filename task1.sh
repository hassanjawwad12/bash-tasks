<<"COMMENT"
Write a script to search a file in a given folder.
~$ ./task1.sh <search_file> <from_folder>
For example:
./task1.sh file1 folder1/
Should output searching every single occurrence of file1 by using depth first search.
COMMENT

#!/bin/bash

#The first thing we will do is check whether the user passed the file and folder name in the args
#The -z variable tells us if argument is empty string or not 
if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Correct Format is following: $0 <file> <folder>"
    echo "Kindly re-run the script with the correct format"   
    exit 1
fi

#we can declare as much arguments as we like here
file="$1"  
folder="$2"

searching() {
    #local keyword can only be used inside a function, it makes variable name have a visible scope 
    local folder="$1"

    for item in "$folder"/*; do 
    #/* is used when we want to search the full folder
        if [ -f "$item" ]; then
            if [ "$(basename "$item")" == "$file" ]; then
                echo "File is found: $item"
                exit 1 #we ended the loop when file is found
            else 
                echo "Not found in folder: $folder"  
            fi
        elif [ -d "$item" ]; then
            #here we are checking the sub directories
            searching "$item"
        fi
    done
}

searching "$folder"







