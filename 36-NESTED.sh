#!/bin/bash

initNumber=1
# while [[ ${initNumber} -lt 4 ]]
# do
#     for i in item1 item2 item3
#     do
#         echo ${initNumber} = $i
#     done
#     ((initNumber++))
# done


# azams@eurusvm:~/dev/bash$ ./35-NESTED.sh 
# 1 = item1
# 1 = item2
# 1 = item3
# 2 = item1
# 2 = item2
# 2 = item3
# 3 = item1
# 3 = item2
# 3 = item3




while [[ ${initNumber} -lt 4 ]]
do
    for i in item1 item2 item3
    do
        echo ${initNumber} = $i
        if [[ ${i} -eq item2 ]]
        then
            break;
        fi 
    done
    ((initNumber++))
done

# azams@eurusvm:~/dev/bash$ ./35-NESTED.sh 
# 1 = item1
# 2 = item1
# 3 = item1


while [[ ${initNumber} -lt 4 ]] # level 2
do
    for i in item1 item2 item3 # level 1
    do
        echo ${initNumber} = $i
        if [[ ${i} -eq item2 ]] # this has a break
        then
            break 2; # it breaks the 2nd level loop
        fi 
    done
    ((initNumber++))
done

# azams@eurusvm:~/dev/bash$ ./35-NESTED.sh 
# 1 = item1