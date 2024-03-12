#!/bin/bash
name="rupert"



echo "${name}"
readonly name
# now this variable's value can not be changed

# to unset a variable
unset name
name="julia"
echo "${name}"