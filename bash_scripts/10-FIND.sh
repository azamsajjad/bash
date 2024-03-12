find [OPTIONS] [PATH...] [EXPRESSION]
# How to search a file based on their size?
azams@eurusvm:~$ find . -size 10M
./dev/git/devops/5-CKA/edureka/0-docker/code/tomcat-8.5.37.tar.gz
# How to find only file or directory in a given path?
azams@eurusvm:~$ find ~/dev/bash -type d
/home/azams/dev/bash
/home/azams/dev/bash/.git
/home/azams/dev/bash/.git/info
/home/azams/dev/bash/.git/hooks
/home/azams/dev/bash/.git/branches
/home/azams/dev/bash/bash_scripts
azams@eurusvm:~$ find ~/dev/bash/bash_scripts/ -type f
/home/azams/dev/bash/bash_scripts/04-compress&archive.sh
/home/azams/dev/bash/bash_scripts/08-clock.sh
/home/azams/dev/bash/bash_scripts/01-install.sh
/home/azams/dev/bash/bash_scripts/09-data.csv
/home/azams/dev/bash/bash_scripts/03-freeDiskMail.sh
/home/azams/dev/bash/bash_scripts/09-doc.csv
/home/azams/dev/bash/bash_scripts/07-data.csv
/home/azams/dev/bash/bash_scripts/00-bestPractice.sh
/home/azams/dev/bash/bash_scripts/07-multi.txt
/home/azams/dev/bash/bash_scripts/07-employees.csv
/home/azams/dev/bash/bash_scripts/02-freeRam.sh
/home/azams/dev/bash/bash_scripts/05-install.sh
/home/azams/dev/bash/bash_scripts/09-dev.csv
/home/azams/dev/bash/bash_scripts/09-posix
/home/azams/dev/bash/bash_scripts/07-AWK.sh
/home/azams/dev/bash/bash_scripts/06-createUser.sh
/home/azams/dev/bash/bash_scripts/10-FIND.sh
/home/azams/dev/bash/bash_scripts/07-file2.awk
/home/azams/dev/bash/bash_scripts/09-SED.sh
/home/azams/dev/bash/bash_scripts/07-file.awk
azams@eurusvm:~$ find ~/dev/bash/bash_scripts/ -type l (symbolic link)
azams@eurusvm:~$ find ~/dev/bash/bash_scripts/ -type b (block device)
azams@eurusvm:~$ find ~/dev/bash/bash_scripts/ -type s (socket)
# How to search a file based on its name?
azams@eurusvm:~$ find . -name 09-posix
./dev/bash/bash_scripts/09-posix
azams@eurusvm:~$ find . -name 09-*
./dev/bash/09-variableReadonly.sh
./dev/bash/bash_scripts/09-data.csv
./dev/bash/bash_scripts/09-doc.csv
./dev/bash/bash_scripts/09-dev.csv
./dev/bash/bash_scripts/09-posix
./dev/bash/bash_scripts/09-SED.sh
# How to ignore upper & lower case in file name while searching?
azams@eurusvm:~$ find . -name 09-POsix
azams@eurusvm:~$ find . -iname 09-POsix
./dev/bash/bash_scripts/09-posix
# How to search files for a given user only?
azams@eurusvm:~$ find ~/dev/bash/bash_scripts/ -user azams
/home/azams/dev/bash/bash_scripts/
/home/azams/dev/bash/bash_scripts/04-compress&archive.sh
/home/azams/dev/bash/bash_scripts/08-clock.sh
/home/azams/dev/bash/bash_scripts/01-install.sh
/home/azams/dev/bash/bash_scripts/09-data.csv
/home/azams/dev/bash/bash_scripts/03-freeDiskMail.sh
/home/azams/dev/bash/bash_scripts/09-doc.csv
/home/azams/dev/bash/bash_scripts/07-data.csv
/home/azams/dev/bash/bash_scripts/00-bestPractice.sh
/home/azams/dev/bash/bash_scripts/07-multi.txt
/home/azams/dev/bash/bash_scripts/07-employees.csv
/home/azams/dev/bash/bash_scripts/02-freeRam.sh
/home/azams/dev/bash/bash_scripts/05-install.sh
/home/azams/dev/bash/bash_scripts/09-dev.csv
/home/azams/dev/bash/bash_scripts/09-posix
/home/azams/dev/bash/bash_scripts/07-AWK.sh
/home/azams/dev/bash/bash_scripts/06-createUser.sh
/home/azams/dev/bash/bash_scripts/10-FIND.sh
/home/azams/dev/bash/bash_scripts/07-file2.awk
/home/azams/dev/bash/bash_scripts/09-SED.sh
/home/azams/dev/bash/bash_scripts/07-file.awk
# How to search a file based on the inode no.?
azams@eurusvm:~$ ls -il ~/dev/bash/bash_scripts/
total 112
1324047 -rw-rw-r-- 1 azams azams   557 Feb  6 18:05  00-bestPractice.sh
1314472 -rw-rw-r-- 1 azams azams   940 Feb  1 18:20  01-install.sh
1323638 -rwxrwxr-x 1 azams azams   209 Feb  2 16:12  02-freeRam.sh
1323643 -rwxrwxr-x 1 azams azams  1605 Feb  2 17:31  03-freeDiskMail.sh
1323654 -rw-rw-r-- 1 azams azams  1012 Feb  2 17:57 '04-compress&archive.sh'
1323880 -rwxrwxr-x 1 azams azams  1658 Feb  6 14:11  05-install.sh
1323881 -rwxrwxr-x 1 azams azams   996 Feb  6 14:55  06-createUser.sh
1323655 -rw-rw-r-- 1 azams azams 17265 Feb  6 17:41  07-AWK.sh
1323992 -rw-rw-r-- 1 azams azams   656 Feb  6 15:30  07-data.csv
1324008 -rw-rw-r-- 1 azams azams   681 Feb  6 17:05  07-employees.csv
1324031 -rwxrwxr-x 1 azams azams   598 Feb  6 17:40  07-file2.awk
1324019 -rwxrwxr-x 1 azams azams   180 Feb  6 17:19  07-file.awk
1324002 -rw-rw-r-- 1 azams azams    39 Feb  6 15:37  07-multi.txt
1324343 -rwxrwxr-x 1 azams azams   149 Feb  7 13:33  08-clock.sh
1324361 -rw-rw-r-- 1 azams azams  1064 Feb  7 14:33  09-data.csv
1324351 -rw-rw-r-- 1 azams azams   189 Feb  7 14:10  09-dev.csv
1324357 -rw-rw-r-- 1 azams azams   101 Feb  7 14:29  09-doc.csv
1324356 -rw-rw-r-- 1 azams azams    62 Feb  7 14:50  09-posix
1324350 -rw-rw-r-- 1 azams azams 19908 Feb  7 15:08  09-SED.sh
1324368 -rw-rw-r-- 1 azams azams   707 Feb  7 15:08  10-FIND.sh
azams@eurusvm:~$ find . -inum 1323638
./dev/bash/bash_scripts/02-freeRam.sh
# How to search a file based on the no. of links?
azams@eurusvm:~$ find . -links 9
./dev/git/devops/5-CKA/edureka/0-docker
./dev/git/devops/5-CKA/edureka/advanced
./dev/git/devops/5-CKA/edureka/advanced/deployment-strategies
./dev/terraform/workspace/server-backend-s3aws
./dev/terraform/packer
./.vscode-server/data/logs/20240206T141134/exthost1
./.vscode-server/bin/8b3775030ed1a69b13e4f4c628c612102e30a681/node_modules/@microsoft/dynamicproto-js/lib/dist
./.vscode-server/bin/05047486b6df5eb8d44b2ecd70ea3bdf775fd937/node_modules/@microsoft/dynamicproto-js/lib/dist
these file have 9 soft/hard links
# How to search a file based on their permissions?
azams@eurusvm:~$ find ~/dev -perm /o=x   /u=x   /g=x   777   400    
/home/azams/dev/k8s
# How to search all the files which start with letter a?
azams@eurusvm:~$ find . -iname a*
# How to search all the files which are created after last.txt file?
azams@eurusvm:~/dev/bash/bash_scripts$ find . -newer 09-doc.csv
.
./09-data.csv
./09-posix
./10-FIND.sh
./09-SED.sh

these files were created after 09-doc.csv

# How to search all the empty files in a given directory?
azams@eurusvm:~/dev/bash/bash_scripts$ find . -empty
./emp
# How to search all the empty files and delete them?
azams@eurusvm:~/dev/bash/bash_scripts$ find . -empty -exec rm {} \;
# How to search all the files whose size are between 10-20 MB
find . -size +10M -size -20M

azams@eurusvm:~$ find . -size +20M -size -25M
./dev/git/devops/5-CKA/edureka/0-docker/code/spring-boot-mongo.jar

# How to search 15 days old files
azams@eurusvm:~$ find dev/bash -mtime 1
dev/bash/bash_scripts/07-data.csv
dev/bash/bash_scripts/07-multi.txt
dev/bash/bash_scripts/05-install.sh
dev/bash/bash_scripts/06-createUser.sh
azams@eurusvm:~$ date
Wed 07 Feb 2024 03:47:28 PM PKT



this will return all the files which were modified in 24 hours before 1 day from Wed 05 Feb 2024 03:47:28 PM PKT
to
Wed 06 Feb 2024 03:47:28 PM PKT