#!/bin/bash

distros=("Ubuntu" "RedHat" "Fedora")
echo ${distros[*]}
distros+=("kali")
echo ${distros[*]}


num=(1 2 3 4 5)
echo ${num[*]}
unset num[2]
echo ${num[*]}
unset num
echo ${num[*]}


user=("john" 122 "sudo,developers" "bash")
echo "User Name: ${user[0]}"
echo "User ID: ${user[1]}"
echo "User Groups: ${user[2]}"
echo "User Shell: ${user[3]}"