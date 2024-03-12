# in a given directory, find files more than a given size e.g. 20mb or files older than given days e.g. 10 days
# compress those files and move into archive folder
# steps:
# provide path of dir
# check if dir present
# create archive folder if not present
# find files >20mb
# compress each file
# move compressed files in archive folder
# make a cron job to run the script regularly



#!/bin/bash
#$Fri 02 Feb 2024 05:36:30 PM PKT$
#$REVISION:001$

#Variuables
BASE=/home/azams/dev/bash/bash_scripts.sh
DAYS=10
DEPTH=1
RUN=0

# check if the directory is present or not
if [ ! -d $BASE ]
then
    echo "directory does not exist: $BASE"
    exit 1
fi

# create archive folder if necessory
if [ ! -d $BASE/archive ]
then
    mkdir $BASE/archive
fi



#  find files >20mb

for i in $(find $BASE -maxdepth $DEPTH -type -f size +20MB)
do
    if [ $RUN -eq 0 ]
    then
        echo "[$(date "+%Y-%m-%d %H:%M")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
done
