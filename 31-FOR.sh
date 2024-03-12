# no need to give a condition in for loop
# just mention the number of times you want the loop to run
# WHILE reads line by line, FOR reads words in line sequentially
#!/bin/bash

for variableName in item1 item2 item3 item4 item5 # FOR consider this list as array, keeps substituting it in variableName and running the same DO
do
    echo "${variableName}"
done
for variableName in "item1 item2" "item3 item4" "item5" # FOR consider this list as array, keeps substituting it in variableName and running the same DO
do
    echo "${variableName}"
done


# Print x table 

read -p "Please enter a number: " number
for i in {1..10}
do
    echo "$((number*i))"
done



# to select all file in the working directory
for i in *
do
    echo $i
done


# azams@eurusvm:~/dev/bash$ for i in *; do chmod +x $i; done
# azams@eurusvm:~/dev/bash$ for i in $(ls *.txt); do rm -rf $i; done

