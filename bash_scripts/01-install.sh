#!/bin/bash


################ FUNCTIONS ######################################

function installPackage(){
    local packageName=${1}
    apt-get install -y ${packageName}
    if [[ $? == 0 ]]
    then 
        echo -e "\033[0;31m ${packageName} installation failed."
        exit 1 # or you can use return 1 in functions, if failed, it will exit the function, not the script
    fi
}

function mavenTarget(){
    local mavenCMD=${1}
    
    if ! mvn ${mavenCMD}
    then
        echo -e "\033[0;31m ${mavenCMD} failed."
        exit 1
    fi

}

#################### VARIABLES ###############################

#################### SCRIPT ##################################

if [[ $UID != 0 ]]
then
    echo -e "\033[0;31m user is not root"
    exit 1
fi



if ! apt-get update
then
    echo -e "\033[0;31m not able to update the repository."
    exit 1
fi

installPackage maven
installPackage tomcat
mavenTarget test
mavenTarget package
