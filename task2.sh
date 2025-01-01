<<"COMMENT"
Write a utility script to follow a deployment pipeline
1. First it should create three files in task2/ folder created earlier in present working directory
2. Create three files using touch command inside the task2/ folder
3. Copy the files and paste into another created folder named task2_temp/
4. Swap both folder names
5. echo before each step what is happening in the next line
6. Make this script task2.sh executable
COMMENT

#we will create 3 files in the task2 folder using the touch command 
touch task2/file1.txt task2/file2.txt task2/file3.txt
echo "Three files created in task2 folder"

#we will create anther folder names as task2_temp 
mkdir -p task2_temp
echo "Created new directory names task2_temp"

#now we will copy files and paste them in the new folder 
#we used the /* to copy all the files from folder task2
cp task2/* task2_temp/
echo "files copied from task2 into task2_temp"

#we swap both the folder names 
mv task2 temp && mv task2_temp task2 && mv temp task2_temp
echo "Folder names swapped" 

