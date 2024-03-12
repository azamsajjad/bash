#!/bin/bash
name="azam"
age="30"

echo ${0}
name=${1}
age=${2}

echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
echo $7
echo $8
echo $9
echo $11
echo $12
echo $13
echo $14

echo "my name is ${name} and my age is ${age}"

echo $#

echo $@

$@ refers to all of a shell scripts command-line arguments. $1 , $2 , etc., refer to the first command-line argument, the second command-line argument, etc.


echo $*
$* Represents all the arguments passed to the script. 

echo $?
$? Returns the exit status of the last command that was executed.


