#!/bin/bash

# check if file is a directory
# or a block device
# char device
# if file exists
# and its permissions
# read, write and execute permissions

# use ls -l
# or use test command []

# file_full_path="/home"

# if [ -d $file_full_path ]
# then
#     echo "$file_full_path is a dir"
# fi



# file_full_path1="/home"

# if [ -b $file_full_path ]
# then
#     echo "$file_full_path1 is a block device"
# fi



# file_full_path1="/home"

# if [ -e $file_full_path ]
# then
#     echo "$file_full_path1 exists"
# fi


file_full_path="/home/azams/dev/bash/abc.txt"

if [ -r $file_full_path ]
then
    echo "$file_full_path has read permissions"
fi



file_full_path="/home/azams/dev/bash/abc.txt"

if [ -w $file_full_path ]
then
    echo "$file_full_path has write permissions"
else
    echo "nop"
fi



file_full_path="/home/azams/dev/bash/abc.txt"

if [ -x $file_full_path ]
then
    echo "$file_full_path has execute permissions"
else
    echo "Nop"
fi