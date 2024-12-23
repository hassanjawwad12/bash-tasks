#!/bin/bash

<<"COMMENT" 
Modify your PS1 and make it look like
[15:52:13] ~ >
Where [15:52:13] is timestamp, ~ is your present working directory.
Put this in ~/.dotfile and execute this dot file safely (only if present) through ~/.bashrc 
COMMENT 

MODIFIED=PS1="[\$(date +%T)] \w > " 
PRESENT="$HOME/.dotfile"

#writing content to file 
cat > "PRESENT" << EOF 
PS1='[\$(date +%T)] \w > ' #saved the format as HH:mm:ss
EOF

SOURCED="$HOME/.bashrc" 

if grep -q "source ~/.dotfile" "$SOURCED"; then 
    echo "Dotfile is already sourced"
else
    echo "DOTFILE Added"
fi
echo "Run source ~/.bashrc or restart the terminal"