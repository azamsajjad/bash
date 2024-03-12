# basename - strip directory info and only give filename
# dirname - strip the filename and gives directory path
# realpath - gives you full path for a file
# RANDOM - a random integer between 0 and 32767 is generated (variable)
# check if file/dir exists



# if [ -d folder]
# if [ ! -d folder]
# if [ ! -f file]
FILEPATH="/home/azams/dev/bash/abc.sh"
if [[ -f $FILEPATH ]]
then 
    echo "File exist"
else
    echo "File not exist"
    touch $FILEPATH
fi


# echo $RANDOM
# azams@eurusvm:~/dev/bash$ echo $RANDOM
# 29003
# azams@eurusvm:~/dev/bash$ echo $RANDOM
# 4492
# azams@eurusvm:~/dev/bash$ echo $RANDOM
# 32579


# generate a random number between 1 and 6
NO=$(( $RANDOM%6 + 1 )) # modulus 6 + 1 - The modulo operator, also known as the remainder operator, is a binary operator that evaluates the remainder of a division between two integers
echo "Number is $NO"


##################################################################################3
# NOHUP

# nohup ./00-keywords.sh &  <------script will run in the background


##################################################################################
# AT

# azams@eurusvm:~/dev/bash$ date
# Fri 02 Feb 2024 03:45:42 PM PKT
# azams@eurusvm:~/dev/bash$ at 03:50 PM 02 Feb 2024
# warning: commands will be executed using /bin/sh
# at> echo Hello.txt
# at> <EOT>
# job 1 at Fri Feb  2 15:50:00 2024
# azams@eurusvm:~/dev/bash$ at 03:50 PM 02 Feb 2024
# warning: commands will be executed using /bin/sh
# at> ^[[A
# at> echo Hello>test.txt
# at> <EOT>
# job 2 at Fri Feb  2 15:50:00 2024
# azams@eurusvm:~/dev/bash$ atq
# 1       Fri Feb  2 15:50:00 2024 a azams
# 2       Fri Feb  2 15:50:00 2024 a azams
# azams@eurusvm:~/dev/bash$ atrm 1
# azams@eurusvm:~/dev/bash$ atq
# 2       Fri Feb  2 15:50:00 2024 a azams

###################################################################################
# CRONTAB crontab -l && crontab -e

# * * * * * cd /home/azams/dev/bash && ./00-keywords.sh
# m h d1-31 m1-12 dayofweek0-6(0=sunday)


# 30 18 * * SUN cd /home/azams/dev/bash && ./00-keywords.sh
# script will run every sunday at 6:30pm