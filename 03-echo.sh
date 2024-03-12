#!/bin/bash


# owner: azams
# purpose: print some echo commands


echo this is our first                 shellscript
echo "this is our first                 shellscript"
echo 'this is our first                shellscript'


# use ASCII characters
echo -e "\033[0;32m success message here"
echo -e "\033[0;31m fail message here"
echo -e "\033[0;33m warning message here"

echo "
############## Script Starting ################
hi
###############################################
"

echo "my \
name \
is \
azam \
"

# strong quotes - prints literally
echo 'my \
name \
is \
azam \
'