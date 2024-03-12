#!/bin/bash
# both conditions must be true

OS_TYPE=$(uname)

if [[ ${OS_TYPE} == "Linux" ]]
then
    if [[ ${UID} -eq 0 ]]
    then
        echo "your operating system is linux."
    fi
fi


# ***************OR use && operator**************************


if [[ ${OS_TYPE} == "Linux" && ${UID} -eq 1000 ]]
then
    echo "your operating system is linux."
fi



#============================================================
# OR operator, if either arguement is true , return the result
# || operator

if [[ ${OS_TYPE} == "Linux" || ${UID} -eq 0 ]]
then
    echo "your operating system is linux."
fi



=============================================================
# e.g. you want to check if a service exists in kubernetes, if not , then
# it must be created, so you can use OR operator in that case
# kubectl get svc podsvc || kubectl apply -f podsvc.yml
# e.g.
# ping -c 1 8.8.8.8 || echo "host unreachable"
# if it pings then other command wont run,
# if it doesnot ping, echo command will run