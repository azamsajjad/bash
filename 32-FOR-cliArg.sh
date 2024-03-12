#!/bin/bash

echo "============== loop one ==============="
for i in $*
do
    echo $i
done

echo "============== loop two ==============="
for i in $@
do 
    echo $i
done



# azams@eurusvm:~/dev/bash$ ./32-commandlineArgs.sh azam sajjad rupert julia reason
# ============== loop one ===============
# azam
# sajjad
# rupert
# julia
# reason
# ============== loop two ===============
# azam
# sajjad
# rupert
# julia
# reason



echo "============== loop one ==============="
for i in "$*"
do
    echo $i
done

echo "============== loop two ==============="
for i in "$@"
do 
    echo $i
done



# ============== loop one ===============
# azam sajjad rupert julia reason
# ============== loop two ===============
# azam
# sajjad
# rupert
# julia
# reason



# read every line word by word in a file

for word in $(cat abc.txt)
do
    echo $word
    sleep 0.25
done

# output
# hi,
# my
# name
# is
# azam
# sajjad
# i
# work
# as
# a
# devops
# engineer
# i
# am
# from
# islamabad