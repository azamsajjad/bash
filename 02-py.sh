#!/usr/bin/python3
print("hello from python")


# azams@eurusvm:~/dev/bash$ uptime
#  11:49:26 up  2:16,  1 user,  load average: 0.00, 0.00, 0.00
# azams@eurusvm:~/dev/bash$ type -a uptime
# uptime is /usr/bin/uptime
# uptime is /bin/uptime
# azams@eurusvm:~/dev/bash$ type -a echo
# echo is a shell builtin
# echo is /usr/bin/echo
# echo is /bin/echo
# azams@eurusvm:~/dev/bash$ type -a pwd
# pwd is a shell builtin
# pwd is /usr/bin/pwd
# pwd is /bin/pwd
# azams@eurusvm:~/dev/bash$ type -a if
# if is a shell keyword
# azams@eurusvm:~/dev/bash$ type -a python3
# python3 is /usr/bin/python3
# python3 is /bin/python3
# azams@eurusvm:~/dev/bash$ echo $PATH
# /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
# <---high command runtime----------------------------------------------------slow command run>
# azams@eurusvm:~/dev/bash$ PATH=""
# azams@eurusvm:~/dev/bash$ echo $PATH

# azams@eurusvm:~/dev/bash$ type -a python3
# -bash: type: python3: not found
# azams@eurusvm:~/dev/bash$ ./2-py.sh 
# hello from python
# azams@eurusvm:~/dev/bash$ 
