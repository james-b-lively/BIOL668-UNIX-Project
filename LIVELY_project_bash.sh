
#!/bin/bash

### Make this a bash script that can be executed by putting
### a "shebang" at the top of the file

echo "It works!"

### Execute command that prints every command as it is executed

### (1) In your home directory make a directory called RAW_DATA

### (2) Copy all .fna fasta files  
###     from home directory into RAW_DATA (must work from any directory.)

### (3) Do the same with all primer files ending with .csv

### (4) In your home directory, make 2 directories: P_DATA and RESULTS

### (5) Add all three directories to your $PATH: ~/RAW_DATA, ~/P_DATA
###     and ~/RESULTS

### (6) Write your entire $PATH, the name RAW_DATA and the 
###    contents of this directory (the names of the files) into a new file 
###    called 'readme.txt' in your home directory

### (7) The last command should dump the contents of readme.txt
###     to the terminal.

#expands and prints variables as executed
set -x 
#change to home directory
cd 
#creates directory RAW_DATA
mkdir RAW_DATA 
#find and copies files with .fna. to RAW_DATA directory using sudo
sudo find -iname '*.fna.*' -exec cp {} RAW_DATA \;
#find and copies files with .csv to RAW_DATA directory using sudo
sudo find -iname '*.csv' -exec cp {} RAW_DATA \;
#creates P_DATA directory in home directory
mkdir P_DATA
#creates RESULTS directory in home directory
mkdir RESULTS
#add /RAW_DATA, /P_DATA and /RESULTS to $PATH
PATH=$PATH:~/RAW_DATA:~/P_DATA:~/RESULTS
#uses the translate function to change colons into newlines so PATH is readable
printf $PATH | tr : "\n" >> readme.txt
#prints header RAW_DATA to file
printf "\nRAW_DATA\n" >> readme.txt
#lists contents of directory
ls -aL >> readme.txt
#prints readme.txt to terminal
cat readme.txt


