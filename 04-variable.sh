#!/bin/bash
# user defined variables
name="AZAM"
age="30"
work="programm"
_variablename="First"
varialbename="Second"
NAME="Rupert"
Name="Julia"
# system defined variables
# man bash <--- this has all system defined variables

echo $name
echo ${name}

echo "my name is $name and my age is $age"
echo 'my name is $name and my age is $age'

echo "i am $working now"
echo "i am ${work}ing now"

echo ${name} ${NAME} ${Name}

echo ${SHELL}
echo ${HOME}
echo ${OSTYPE}
echo ${$} #process id
echo ${PPID} #parent process id
echo ${HOSTNAME}
echo ${UID}

sleep 5

echo ${SECONDS} # <----time took to run script
