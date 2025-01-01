#!/bin/bash

# Modify your PS1 and make it look like
# [15:52:13] ~ >
# Where [15:52:13] is timestamp, ~ is your present working directory.
# Put this in ~/.dotfile and execute this dot file safely (only if present) through ~/.bashrc 

#we write the prompt to the dot file
echo "PS1='[\$(date +%T)] \w > '" > ~/.dotfile

#we append sourcing to bashrc
echo "source ~/.dotfile" >> ~/.bashrc

echo "Run source ~/.bashrc on the teriminal to see the changes"

source ~/.bashrc