#!/bin/bash

# monitoring free boot disk space
FU=$(df -h | egrep -v "Filesystem|tmpfs|udev|loop*" | grep vda2 | awk '{print $5}' | tr -d %)

if [[ $FU -ge 80 ]]
then
    echo -e "\033[0;31m disk space is running low"
else
    echo -e "\033[0;32m disk space is sufficient"
fi

# SETUP EMAIL
# install postfix
# install mailutils (mailx)

# 1- edit /etc/postfix/main.cf file
# relayhost = [smtp.gmail.com]:587
# myhostname = eurusvm

# 2- add at bottom of /etc/postfix/main.cf file
# # Location of sasl_passwd we saved
# smtp_sasl_password_maps = hash:/etc/postfix/sasl/sasl_passwd <----create this file and add a line

# # Enables SASL authentication for postfix
# smtp_sasl_auth_enable = yes
# smtp_tls_security_level = encrypt

# # Disallow methods that allow anonymous authentication
# smtp_sasl_security_options = noanonymous



# 3-
# smtp_sasl_password_maps = hash:/etc/postfix/sasl/sasl_passwd <----create this file and add a line
# [smtp.gmail.com]:587 azam@gmail.com:Edecer32rfm43
# then convert this sasl password file into db file
# postmap sasl_password
# chmod 0600 sasl_password.db
# systemctl enable --now postfix


# 4-
# how to send email
# echo "Test Mail body" | mail -s "Postfix TEST" -a 00-keyword.sh paul@gmail.com
# cat /var/log/maillog




# monitoring free boot disk space
FU=$(df -h | egrep -v "Filesystem|tmpfs|udev|loop*" | grep vda2 | awk '{print $5}' | tr -d %)
TO="azam.sajjad@eurustechnologies.com"
if [[ $FU -ge 80 ]]
then
    echo -e "\033[0;31m disk space is running low -$FU %" | mail -s "Disk Space Alert!" $TO
else
    echo -e "\033[0;32m disk space is sufficient"
fi