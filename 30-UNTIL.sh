# if you want to execute something when the condition is false, and
# keep executing it until the condition becomes true
# this is UNTIL loop, opposite of while loop
#!/bin/bash

read -p "please enter a number: " number
initNumber=1
until [[ ${initNumber} -eq 10 ]]
do
    echo $((initNumber*number))
    ((initNumber++))
done
