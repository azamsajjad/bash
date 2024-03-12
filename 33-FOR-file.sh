#!/bin/bash

# getting values from a file names.txt

FILE="/home/azams/dev/bash/names.txt"

for name in $(cat $FILE)
do
    echo "Name is $name"
done