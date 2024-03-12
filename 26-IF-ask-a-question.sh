#!/bin/bash

# do you want to continue (y/yes)?

# read -p "do you want to continue (Y/y/yes)? " userValue
# if [[ ${userValue} == 'y' || ${userValue} == "Y" || ${userValue} == "yes" ]]
# then
#     echo "installing nginx....."
# else
#     echo "aborting..."
# fi





read -p "do you want to continue (Y/y/yes)? " userValue
if [[ ${userValue,,} == 'y' || ${userValue,,} == "yes" ]] #convert input to all small characters
then
    echo "installing nginx....."
else
    echo "aborting..."
fi