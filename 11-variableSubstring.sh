#!/bin/bash

string="abcrupertxyz rupert"
echo "${string:0}"



string="abcrupertabcxyz rupert"
echo "${string:1}"



string="abcrupertabcxyz"
echo "${string:1}"
string="abcrupertabcxyz"
echo "${string:4}"
string="abcrupertabcxyz"
echo "${string:6}"
string="abcrupertabcxyz"
echo "${string:0:3}"
string="abcrupertabcxyz"
echo "${string:3:3}"
string="abcrupertabcxyz"
echo "${string:-3}"
string="abcrupertabcxyz"
echo "${string: -3}"

echo 
echo
# delete a part of string
string="abcrupertabcxyz"
echo "${string#a*c}" # start from a START -> stop at shortest match of c & delete it
echo "${string##a*c}" # start from a START -> stop at longest match of c & delete it
echo "${string%b*z}" # start from z END -> stop at shortest match of b & delete it
echo "${string%%b*z}"  # start from z END -> stop at longest match of b & delete it


echo
echo
string="abcrupertabcxyz"
echo "${string/abc/xyz}" # REPLACE FIRST occurance of abc and replace it with xyz
echo
echo
string="abcrupertabcxyz"
echo "${string//abc/xyz}" # REPLACE ALL occurance of abc and replace it with xyz
echo
echo
string="abcrupertabcxyz"
echo "${string/abc}" # DELETE FIRST occurance of abc
echo
echo
string="abcrupertabcxyz"
echo "${string//abc}" # DELETE ALL occurance of abc