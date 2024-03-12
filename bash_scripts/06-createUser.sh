# #!/bin/bash

# script should execute as SUDO root access
if [[ ${UID} -ne 0 ]]
then
    echo "user is not root. script exited."
    exit 1
fi

# user should provide atleast one arguement as username 
if [[ ${#} -lt 1 ]]
then
    echo "Usage: ${0} USER_NAME [COMMENT]..."
    echo "Create a user with name USER_NAME and comments field of COMMENT"
    exit 1
fi

# store 1st arguement as username
USER_NAME="${1}"

# in case of more than one arguement, store it as account comment
shift
COMMENT="${@}"

# create a password
PASSWORD=$(date +%s%N)

# create the user
useradd -c "$COMMENT" -m $USER_NAME  -p $PASSWORD #<-------UBUNTU
# check if user is successfully created 
if [[ ${?} -ne 0 ]]
then
    echo "user creation failed"
    exit 1
fi
# set password
# echo $PASSWORD | passwd --stdin $USER_NAME <-----REDHAT
# force password change on first login
passwd -e $USER_NAME
# display information
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo "Hostname: $(hostname)"