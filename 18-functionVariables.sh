#!/bin/bash
# packageName="tomcat"
read -p " please enter a package name to deploy: " packageName
function install(){
    echo
    echo "**************   INSTALLING ${FUNCNAME} - START   *******************"
    echo
    echo "${0}" # PRINT SCRIPT COMMAND WITH NAME
    echo "${FUNCNAME}" # PRINT FUNCTION NAME - SYSTEM-DEFINED VARIABLE
    echo "installing ${1}"
    echo
    echo "**************   INSTALLING ${FUNCNAME} - END   *******************"
    echo
}

# USE CASE
function config(){
    echo "**************   EXECUTING ${FUNCNAME} - START   *****************"
    echo
    echo "configuring ${1}"
    echo
    echo "**************   EXECUTING ${FUNCNAME} - END   *******************"
    echo
}

function deploy(){
    echo
    echo "**************   DEPLOYING ${FUNCNAME} - START   *****************"
    echo
    echo "deploying ${1}"
    echo "${0}"
    echo "${FUNCNAME}"
    echo
    echo "**************   DEPLOYING ${FUNCNAME} - END   *******************"
}


echo "Step 1 ${packageName}"
install "${packageName}"
sleep 2
echo "Step 2 ${packageName}"
config "${packageName}"
sleep 2
echo "Step 3 ${packageName}"
deploy "${packageName}"
