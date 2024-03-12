#!/bin/bash

# while [[ $answer != "yes" ]]
# do
#     read -p "please enter yes" answer
# done


# infinite loop
# while true
# do 
#     echo "this is infinite loop"
# done




# Multiplication table
read -p "please enter a number " number
initNumber=1
while [[ ${initNumber} -le 10 ]]
do 
    echo $((initNumber*number))
    ((initNumber++))
done


