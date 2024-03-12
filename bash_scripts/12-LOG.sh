azams@eurusvm:~$ logrotate
logrotate 3.14.0 - Copyright (C) 1995-2001 Red Hat, Inc.
This may be freely redistributed under the terms of the GNU General Public License

Usage: logrotate [-dfv?] [-d|--debug] [-f|--force] [-m|--mail=command] [-s|--state=statefile] [-v|--verbose] [-l|--log=logfile] [--version] [-?|--help] [--usage] [OPTION...] <configfile>
azams@eurusvm:~$ cd /var/log



azams@eurusvm:/var/log$ vim /etc/logrotate.conf



# see "man logrotate" for details
# rotate log files weekly
weekly

# use the adm group by default, since this is the owning group
# of /var/log/syslog.
su root adm

# keep 4 weeks worth of backlogs
rotate 4

# create new (empty) log files after rotating old ones
create

# use date as a suffix of the rotated file
#dateext

# uncomment this if you want your log files compressed
#compress

# packages drop log rotation information into this directory
include /etc/logrotate.d

# system-specific logs may be also be configured here.
~                                                       



azams@eurusvm:/var/log$ cd /etc/logrotate.d/
azams@eurusvm:/etc/logrotate.d$ ll
total 52
drwxr-xr-x   2 root root 4096 Jan 25 15:40 ./
drwxr-xr-x 112 root root 4096 Feb  6 14:55 ../
-rw-r--r--   1 root root  120 Sep  6  2019 alternatives
-rw-r--r--   1 root root  126 Jul  8  2022 apport
-rw-r--r--   1 root root  173 Apr  9  2020 apt
-rw-r--r--   1 root root   91 Nov  2  2020 bootlog
-rw-r--r--   1 root root  130 Jan 21  2019 btmp
-rw-r--r--   1 root root  112 Sep  6  2019 dpkg
-rw-r--r--   1 root root  501 Mar  7  2019 rsyslog
-rw-r--r--   1 root root  270 Mar  1  2023 ubuntu-advantage-tools
-rw-r--r--   1 root root  178 Jan 22  2020 ufw
-rw-r--r--   1 root root  235 Apr 25  2022 unattended-upgrades
-rw-r--r--   1 root root  145 Feb 19  2018 wtmp



# settings for firewall
# we are telling logrotate to consider /var/log/ufw.log for rotation with the following settings
azams@eurusvm:/etc/logrotate.d$ cat ufw
/var/log/ufw.log
{
	rotate 4
	weekly
	missingok
	notifempty
	compress
	delaycompress
	sharedscripts
	postrotate
		invoke-rc.d rsyslog rotate >/dev/null 2>&1 || true
	endscript
}



# set log rotations for a new file
azams@eurusvm:/var/log$ cd /var/log
azams@eurusvm:/var/log$ sudo mkdir myapp-logs
azams@eurusvm:/var/log$ sudo touch myapp-logs/myapp.log
azams@eurusvm:/etc/logrotate.d$ sudo truncate -s 15M /var/log/myapp-logs/myapp.log 

azams@eurusvm:/etc/logrotate.d$ ls -lh /var/log/myapp-logs/myapp.log 
-rw-r--r-- 1 root root 15M Feb  7 17:47 /var/log/myapp-logs/myapp.log


azams@eurusvm:/var/log$ cd /etc/logrotate.d/
azams@eurusvm:/etc/logrotate.d$ sudo touch myapp
azams@eurusvm:/etc/logrotate.d$ vim myapp
azams@eurusvm:/etc/logrotate.d$ sudo vim myapp
azams@eurusvm:/etc/logrotate.d$ cat myapp 
/var/log/myapp-logs/*.log {
	daily
	size 10M
}

# to see whats logrotate is upto:
azams@eurusvm:/etc/logrotate.d$ sudo logrotate -d /etc/logrotate.conf 
WARNING: logrotate in debug mode does nothing except printing debug messages!  Consider using verbose mode (-v) instead if this is not what you want.

rotating pattern: /var/log/myapp-logs/*.log  10485760 bytes (4 rotations)
empty log files are rotated, old logs are removed
switching euid to 0 and egid to 4
considering log /var/log/myapp-logs/myapp.log
Creating new state
  Now: 2024-02-07 17:54
  Last rotated at 2024-02-07 17:00
  log needs rotating
rotating log /var/log/myapp-logs/myapp.log, log->rotateCount is 4
dateext suffix '-20240207'
glob pattern '-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
renaming /var/log/myapp-logs/myapp.log.4 to /var/log/myapp-logs/myapp.log.5 (rotatecount 4, logstart 1, i 4), 
renaming /var/log/myapp-logs/myapp.log.3 to /var/log/myapp-logs/myapp.log.4 (rotatecount 4, logstart 1, i 3), 
renaming /var/log/myapp-logs/myapp.log.2 to /var/log/myapp-logs/myapp.log.3 (rotatecount 4, logstart 1, i 2), 
renaming /var/log/myapp-logs/myapp.log.1 to /var/log/myapp-logs/myapp.log.2 (rotatecount 4, logstart 1, i 1), 
renaming /var/log/myapp-logs/myapp.log.0 to /var/log/myapp-logs/myapp.log.1 (rotatecount 4, logstart 1, i 0), 
log /var/log/myapp-logs/myapp.log.5 doesn't exist -- won't try to dispose of it
renaming /var/log/myapp-logs/myapp.log to /var/log/myapp-logs/myapp.log.1
creating new /var/log/myapp-logs/myapp.log mode = 0644 uid = 0 gid = 0
switching euid to 0 and egid to 0

rotating pattern: /var/log/myapp-logs/*.log  10485760 bytes (4 rotations)
empty log files are rotated, old logs are removed
switching euid to 0 and egid to 4
considering log /var/log/myapp-logs/myapp.log
Creating new state
  Now: 2024-02-07 17:59
  Last rotated at 2024-02-07 17:00
  log needs rotating
rotating log /var/log/myapp-logs/myapp.log, log->rotateCount is 4
dateext suffix '-20240207'
glob pattern '-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
glob finding old rotated logs failed
renaming /var/log/myapp-logs/myapp.log to /var/log/myapp-logs/myapp.log-20240207
creating new /var/log/myapp-logs/myapp.log mode = 0644 uid = 0 gid = 0
switching euid to 0 and egid to 0


# to manually trigger rotation . otherwise we have set rotation to WEEKLY
azams@eurusvm:/etc/logrotate.d$ sudo logrotate /etc/logrotate.conf 
azams@eurusvm:/etc/logrotate.d$ ls -lh /var/log/myapp-logs/
total 0
-rw-r--r-- 1 root root   0 Feb  7 18:00 myapp.log
-rw-r--r-- 1 root root 15M Feb  7 17:47 myapp.log-20240207


azams@eurusvm:/etc/logrotate.d$ sudo cat  /etc/logrotate.d/myapp 
/var/log/myapp-logs/*.log {
	daily
	size 10M
	olddir /var/log/myapp-logs/archives
	compress
}



# how to know when will automatically logrotate trigger - as our file has crossed 10M in size
azams@eurusvm:/etc/logrotate.d$ systemctl status logrotate.timer
● logrotate.timer - Daily rotation of log files
     Loaded: loaded (/lib/systemd/system/logrotate.timer; enabled; vendor preset: enabled)
     Active: active (waiting) since Wed 2024-02-07 13:22:56 PKT; 4h 44min ago
    Trigger: Thu 2024-02-08 00:00:00 PKT; 5h 52min left
   Triggers: ● logrotate.service
       Docs: man:logrotate(8)
             man:logrotate.conf(5)

Feb 07 13:22:56 eurusvm systemd[1]: Started Daily rotation of log files.


# you can find logrotate cronjob
azams@eurusvm:/etc/logrotate.d$ cd /etc/cron.daily/
azams@eurusvm:/etc/cron.daily$ ll
total 48
drwxr-xr-x   2 root root 4096 Jan 25 15:40 ./
drwxr-xr-x 112 root root 4096 Feb  7 17:59 ../
-rwxr-xr-x   1 root root  376 Sep 16  2021 apport*
-rwxr-xr-x   1 root root 1478 Apr  9  2020 apt-compat*
-rwxr-xr-x   1 root root  355 Dec 29  2017 bsdmainutils*
-rwxr-xr-x   1 root root 1187 Sep  6  2019 dpkg*
-rwxr-xr-x   1 root root  377 Jan 21  2019 logrotate*
-rwxr-xr-x   1 root root 1123 Feb 25  2020 man-db*
-rw-r--r--   1 root root  102 Feb 14  2020 .placeholder
-rwxr-xr-x   1 root root 4574 Jul 18  2019 popularity-contest*
-rwxr-xr-x   1 root root  214 Jan 21  2023 update-notifier-common*


azams@eurusvm:/etc/cron.daily$ cat logrotate 
#!/bin/sh

# skip in favour of systemd timer
if [ -d /run/systemd/system ]; then
    exit 0
fi

# this cronjob persists removals (but not purges)
if [ ! -x /usr/sbin/logrotate ]; then
    exit 0
fi

/usr/sbin/logrotate /etc/logrotate.conf
EXITVALUE=$?
if [ $EXITVALUE != 0 ]; then
    /usr/bin/logger -t logrotate "ALERT exited abnormally with [$EXITVALUE]"
fi
exit $EXITVALUE

