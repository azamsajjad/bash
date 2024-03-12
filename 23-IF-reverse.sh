#!/bin/bash

name="azam sajjad"
othername="azam sajjad"

if [[ ! $name == $othername ]]
then
    echo "both are same"
else
    echo "both are different"
fi


# ! operator reverses the condition
# if is true => ! makes it false
# if is false => ! makes it true


if [[ ! $name != $othername ]]
then
    echo "both are same"
else
    echo "both are different"
fi
