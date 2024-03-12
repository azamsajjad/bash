#!/bin/bash

string="my name is Azam"

echo "${string}"   # my name is Azam
echo "${string^}"  # My name is Azam
echo "${string^^}" # MY NAME IS AZAM

string="My name is Azam"
echo "${string}"   # My name is Azam
echo "${string,}"  # my name is Azam
echo "${string,,}" # my name is azam



echo "length of string variable is ${#string}"