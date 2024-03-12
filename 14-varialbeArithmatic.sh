#!/bin/bash

a=5
b=6
# While ${} is used for parameter expansion and variable manipulation, $() is utilized for command substitution, allowing the execution of commands and substitution of their output. Keep these differences in mind while crafting your Bash scripts to ensure their efficiency and accuracy.

# $(()) is an arithmatic expansion
# echo "$(( 0x63 ))"
# As a side note, variables occurring in an arithmetic expression do not need their $:

# $ x=030; y=30; z=0x30
# $ echo "$(( x + y +x ))"



echo "a+b"
echo "5+6"

echo "$(a+b)"
echo "$(5+6)"

echo "$(($a+$b))"
echo
echo "$((a+b))"
echo "$((a-b))"
echo "$((a*b))"
echo "$((a/b))" # 5/6 = 0
echo "$((a%b))" # remainder = 5
echo
echo "$((2**3))" # 2 raise to power 3 = 8
echo
echo
echo

((a++)) # a=a+1 i.e. a is now 6   | Mostly used in While loop
echo $a
((a+=2)) # a=a+2 i.e. a is now 8
echo $a
((a+=3)) # a=a+3 i.e. a is now 11
echo $a