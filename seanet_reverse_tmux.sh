#!/bin/bash


home=$(dirname $(realpath $0))

SESSION=seanet_reverse

tmux has-session -t $SESSION &> /dev/null

if [ $? != 0 ] 

then
    tmux new-session -s $SESSION  $home/reverse.sh
fi


tmux attach-session -t $SESSION
