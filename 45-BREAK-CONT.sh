#!/bin/bash

for ((i=1;i<=10;i++)); do
    echo $i
    if [ $i -eq 3 ]; then
        break
    fi
done



# CONTINUE statement skips over an iteration of the loop, it does not breaks the loop
# print all odd numbers

for ((i=0;i<=100;i++)); do
    if [ $(( $i % 2 )) -eq 0 ]; then
        continue
    fi
    echo $i
done
