# bash-scripting-tasks
## Task 1:
Write a script to search a file in a given folder.
~$ ./task1.sh <search_file> <from_folder>
For example:
./task1.sh file1 folder1/
Should output searching every single occurrence of file1 by using depth first search.

## Task 2:
Write a utility script to follow a deployment pipeline
1. First it should create three files in task2/ folder created earlier in present working directory
2. Create three files using touch command inside the task2/ folder
3. Copy the files and paste into another created folder named task2_temp/
4. Swap both folder names
5. echo before each step what is happening in the next line
6. Make this script task2.sh executable

## Task 3
ifconfig gives you your system network information. Parse out your local IP (192.168.xxx.xxx) address and display it
only.
$ ./whats_my_ip.sh
Example output
192.168.18.2

## Task 4
Modify your PS1 and make it look like
[15:52:13] ~ >
Where [15:52:13] is timestamp, ~ is your present working directory.
Put this in ~/.dotfile and execute this dot file safely (only if present) through ~/.bashrc .

## Task 5
Box print a string through script
$ ./box_print.sh THIS STRING
Should print
***************
* THIS STRING *
***************

## Task 6
In last task (Task 5), pass arguments (through flags), like
$ ./box_print.sh -s "THIS STRING" -c "+"
The above example prints it
+++++++++++++++
+ THIS STRING +
+++++++++++++++
Passing nothing as a character (no -c ) will only print the string
THIS STRING

