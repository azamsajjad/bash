#!/bin/bash




# cat /etc/passwd | while read line
# do  
#     echo "$line"
# done

# read command remains true untill end-of-file, then it becomes false breaking the loop
while read line
do  
    echo "$line"
    sleep 0.25
done < /etc/passwd # you can give standard input to while loop like this