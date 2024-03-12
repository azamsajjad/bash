#!/bin/bash
# continue is used to skip a particular instance of a loop


initNumber=0
while [[ ${initNumber} -lt 10 ]]
do
    ((initNumber++))
    if [[ ${initNumber} -eq 5 ]]
    then
        continue; # as soon as IF becomes true, code below it is skipped and WHILE restarts
    fi
    echo ${initNumber}
done


# azams@eurusvm:~/dev/bash$ ./34-CONTINUE.sh 
# 1
# 2
# 3
# 4
# 6
# 7
# 8
# 9
# 10