#!/bin/bash
# $1 is a leap year if
# it is a multiple of 400 and 4
# it is not a multiple of 100


year=$1

if [[ $(($year % 400)) -eq 0 ]]; then
    echo "$1 is a Leap Year"
elif [[ $(($year % 4)) -eq 0 ]] && [[ $(($year % 100)) -ne 0 ]]; then
    echo "$1 is a Leap Year"
else
    echo "$1 is not a Leap Year"
fi
