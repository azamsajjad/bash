#!/bin/bash

# user Define Variables
read pass # <---- takes input from user

read 
echo ${REPLAY}


read -p "please enter your name " name
read -p "please enter your age " age
read -p "please enter your password " -s password
echo

echo "hello ${name}, and your age is ${age}, \
your password is ${password}"