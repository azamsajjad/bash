# you can use : to see if a variable value is set or not


# azams@eurusvm:~/dev/bash$ help :
# :: :
#     Null command.
    
#     No effect; the command does nothing.
    
#     Exit Status:
#     Always succeeds.

#  : is a null command with 200 exit code

#!/bin/bash
# name="rupert"
: ${1:?" please set variable values "}
echo "i am here"
# azams@eurusvm:~/dev/bash$ ./13-varialbeNotSet.sh rupert
# i am here

# # name="rupert"
# : ${name:?" please set variable values "}
# echo "i am here"
# azams@eurusvm:~/dev/bash$ ./13-varialbeNotSet.sh rupert
# ./13-varialbeNotSet.sh: line 14: name:  please set variable values 