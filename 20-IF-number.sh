#!/bin/bash

number=5
number1=6

if test $number -eq 5
then
    echo "number is equal to 5"
fi

# ANOTHER WAY TO WRITE test = [ ]
# it does the same thing, code looks cleaner

if [ $number1 -eq 6 ]
then 
    echo "number1 is equal to 6"
fi


if [ $number1 -lt 10 ]
then 
    echo "number1 is less than 10"
fi


if [ $number1 -lt 5 ]
then 
    echo "number1 is less than 5"
else
    echo "notRight"
fi