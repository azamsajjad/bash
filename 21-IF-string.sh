#!/bin/bash

if [ "rupert" = "rupert" ]
then
    echo "both strings are equal"
fi


name="azam sajjad"
other="azam sajjad"
# if [ "${name}" = "rupert" ]
# or
if [[ $name == $other ]]  # YOU CAN USE [[ ]] INSTEAD OF "" for cleaner code
then
    echo "both strings are equal"
else
    echo "notEqual"
fi


if [[ $name != $other ]]  # YOU CAN USE [[ ]] INSTEAD OF "" for cleaner code
then
    echo "both strings are equal"
else
    echo "notEqual"
fi
