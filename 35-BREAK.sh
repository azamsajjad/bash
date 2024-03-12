#!/bin/bash

# initNumber=1
# while [[ ${initNumber} -lt 10 ]]
# do
#     echo ${initNumber}
#     ((initNumber++))
# done




initNumber=1
while [[ ${initNumber} -lt 10 ]]
do
    echo ${initNumber}
    if [[ ${initNumber} -eq 5 ]]
    then
        echo "condition is true"
        break;
    fi
    ((initNumber++))
done

# break always break the loop which is immediately above it

initNumber=1
while [[ ${initNumber} -lt 10 ]]
do
    echo ${initNumber}
    if [[ ${initNumber} -eq 5 ]]
    then
        echo "condition is true"
        break;
    fi
    ((initNumber++))
done
