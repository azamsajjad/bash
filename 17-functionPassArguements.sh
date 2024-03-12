#!/bin/bash
function install(){
    echo "installing ${1} ${2}"
    echo "${0}" # PRINT SCRIPT NAME
    echo "${FUNCNAME}" # PRINT FUNCTION NAME - SYSTEM-DEFINED VARIABLE
}

# USE CASE
function config(){
    echo "**************   EXECUTING ${FUNCNAME} - START   *****************"
    echo
    echo "configuring ${1}"
    echo
    echo "**************   EXECUTING ${FUNCNAME} - END   *******************"
}

function deploy(){
    echo "deploying ${1}"
    echo "${0}"
    echo "${FUNCNAME}"
}

install "nginx" "web server"
config "nginx"
deploy "web server"

# azams@eurusvm:~/dev/bash$ ./17-functionPassArguements.sh 
# installing nginx
# configuring nginx
# deploying web server

# azams@eurusvm:~/dev/bash$ ./17-functionPassArguements.sh
# installing nginx web server
# configuring nginx
# deploying web server