
#!/bin/bash

#checking a directory exits or not if exits then make a tarfile a directory and add it in a new directory .

DIR="/home/anju/devops1to100/day2logretention/testfile"

if [ -d "$DIR" ]; then
     echo "directory is there now we can compress it"
     mkdir testarchive
     tar -cvf testfilearchive_$(date +"%Y-%m-%d").tar.gz testfile
     mv *.gz testarchive

else
   echo "directory doesnot exit in this path"
fi