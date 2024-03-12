#!/bin/bash
# when using WHILE loop, you need to initialize the count before starting the loop
# but in case of FOR loop, you can initialize it within the loop

num=1
echo "table of THREE"
while [ $num -le 10 ]; do
    echo "3 x $num = $(($num * 3))"
    num=$((num+1))
done

echo
echo

# opposite of -le is -gt

numb=1
echo "table of FOUR"
until [ $numb -gt 10 ]; do
    echo $((numb * 4))
    numb=$((numb+1))
done

