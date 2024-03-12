#!/bin/bash
# to create a user, provide username and description

echo "Creating user"
echo "Username is '$1'"
shift # <-------------------shift removes $1 from total arguements and assigns all other arguements to $@
echo "Description is '$@'"


