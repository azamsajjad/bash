#!/bin/bash

number=10

if [[ ${number} -eq 10 ]]
then
    echo "$number is equal to ten."
    if [[ ${number} -lt 10 ]]
    then
        echo "$number is less than ten."
    else
        echo "$number is greater than ten."
    fi
else
    echo "invalid format"
fi



#---------------OR----------------------------

if [[ ${number} -eq 10 ]]
then
    echo "$number is equal to ten."
elif [[ ${number} -lt 10 ]]
then
    echo "$number is less than ten."
else
    echo "$number is greater than ten."
fi

echo
echo


# in elif , script stops at first instance of truth
# doesnot go deep then.

numbers=24
if [[ $numbers -eq 10 ]]
then
    echo "$numbers is equal to ten"
elif [[ $numbers -gt 10 ]]
then
    echo "numbers is greater than ten."
elif [[ $numbers -gt 20 ]]
then
    echo "$numbers is greater than twenty."
else
    echo "$numbers is less than 10."
fi