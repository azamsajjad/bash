#!/bin/bash

if [ $(whoami) = 'root' ]; then
    echo "You are Root"
fi


TEMP=$1
if [[ $TEMP -gt 5 ]]; then
    if [[ $TEMP -lt 15 ]]; then
        echo "weather is cold"
    elif [[ $TEMP -lt 25 ]]; then
        echo "weather is pleasant"
    else
        echo "Weather is hot"
    fi
else
    echo "weather is harsh"
fi        