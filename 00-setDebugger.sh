#!/bin/bash
echo "my name is azam"
var=5
set -x # <---------- Debugger start
echo "var is $var"
testvar = 10
echo "testvar is $testvar"
set +x # <----------- Debugger stop
echo "command one"
echo "command two"
echo "command three"