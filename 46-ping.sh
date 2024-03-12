#!/bin/bash

for((x=1;x<=255;x++)); do
    ping -c 23.227.36.${x} >> /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "Server 23.227.36.${x} is up and running."
    else
        echo "Server 23.227.36.$x is unreachable."
    fi
done