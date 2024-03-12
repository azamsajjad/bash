#!/bin/bash

read -p " please enter your name " name

name=${name:-World} #default value

echo "Hello ${name^}!"

