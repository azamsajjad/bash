#!/bin/bash
# action=${1}
#start,stop,restart,reload

# if [[ ${action} == "start" ]]
# then 
#     echo "going to start...."
# elif [[ ${action} == "stop" ]]
# then 
#     echo "going to stop...."
# elif [[ ${action} == "reload" ]]
# then 
#     echo "going to reload...."
# elif [[ ${action} == "restart" ]]
# then 
#     echo "going to restart...."
# fi



#----------------OR------------------------

# case ${action} in
#     start)
#         echo "going to start...."
#         ;;
#     stop)
#         echo "going to stop...."
#         ;;
#     reload)
#         echo "going to reload...."
#         ;;
#     restart)
#         echo "going to restart...."
#         ;;
#     *)
#         echo "please give an input as CLI arguement"
# esac





# #----------------OR------------------------


# case ${action} in
#     start | Start | START) 
#         echo "going to start...."
#         ;;
#     stop | Stop | STOP)
#         echo "going to stop...."
#         ;;
#     reload | Reload | RELOAD)
#         echo "going to reload...."
#         ;;
#     restart | Restart | RESTART)
#         echo "going to restart...."
#         ;;
#     *)
#         echo "please give an input as CLI arguement"
# esac




#----------------OR------------------------
# action=${1,,}
#start,stop,restart,reload

# case ${action} in
#     start)
#         echo "going to start...."
#         ;;
#     stop)
#         echo "going to stop...."
#         ;;
#     reload)
#         echo "going to reload...."
#         ;;
#     restart)
#         echo "going to restart...."
#         ;;
#     *)
#         echo "please give an input as CLI arguement"
# esac


# ====================================================
# PATTERN Matching

# read -p "enter y or n: " answer

# case ${answer} in
#     [Yy] | [Yy][Ee][Ss])
#         echo "you entered Yes"
#         ;;
#     [Nn])
#         echo "you entered No"
#         ;;
#     *)
#         echo "you entered invalid character"
# esac


# best practice

# read -p "enter y or n: " answer

# case ${answer,,} in
#     [y] | yes)
#         echo "you entered Yes"
#         ;;
#     [n] | no)
#         echo "you entered No"
#         ;;
#     *)
#         echo "you entered invalid character"
# esac



# best practice 2 - anything starting with y is yes

read -p "enter y or n: " answer

case ${answer,,} in
    [y]*)
        echo "you entered Yes"
        ;;
    [n]*)
        echo "you entered No"
        ;;
    *)
        echo "you entered invalid character"
esac

