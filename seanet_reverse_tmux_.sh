#!/bin/bash


home=$(dirname $(realpath $0))

SESSION=seanet_reverse

tmux has-session -t $SESSION &> /dev/null

if [ $? != 0 ] 

then
    tmux new-session -s $SESSION -d $home/reverse.sh
fi


#/usr/bin/tmux attach-session -t $SESSION
