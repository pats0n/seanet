#!/bin/bash

alias vim='vim -p'
alias vi='vim -p'

export PATH=$HOME/projects/mtsdb/bin:$HOME/projects/mts/bin:$HOME/projects/atsdb/bin:$HOME/projects/atste/bin:$HOME/projects/mo/bin:$PATH

#ats
alias atsdb="cd $HOME/projects/atsdb/bin"

alias atste_root="cd $HOME/projects/atste/bin"
alias atste_dev="cd $HOME/projects/atste/dev/strats"
alias atste_crabel='cd `ls ~/projects/atste/crabel*/ -d | tail -1 `; cd strats'
alias atste_cjp='cd `ls ~/projects/atste/cjp*/ -d | tail -1 `; cd strats'
alias atste_test='cd `ls ~/projects/atste/test-2*/ -d | tail -1 `; cd strats'

#AWS
export EC2_URL=http://ec2.ap-southeast-1.amazonaws.com

#mo 
alias mo_root="cd $HOME/projects/mo/bin"
alias mo_dev="cd $HOME/projects/mo/dev/bin"

alias mo_prod='cd `ls ~/projects/mo/prod-2*/ -d | tail -1 `; cd bin;'
alias mo_scview='cd `ls ~/projects/mo/scview-2*/ -d | tail -1 `; cd bin;'
alias mo_optboard='cd `ls ~/projects/mo/optboard-2*/ -d | tail -1 `; cd bin;'
alias mo_deman='cd `ls ~/projects/mo/deman-2*/ -d | tail -1 `; cd bin;'
alias mo_hvol='cd `ls ~/projects/mo/hvol-2*/ -d | tail -1 `; cd bin;'

#mts
alias mts_root='cd $HOME/projects/mts/bin'
alias mtsdb='cd $HOME/projects/mtsdb/bin'
alias mts_dev='cd $HOME/projects/mts/dev/strats'
alias mts_strats='cd /mnt/nas_gfs'


#rip500
export LD_LIBRARY_PATH=/usr/lib/chromium-browser/libs:$LD_LIBRARY_PATH
export PATH=/usr/lib/chromium-browser:$PATH

case "$-" in
*i*) cd seanet; git pull > /dev/null; git status -s; cd ..
esac

export PATH=$HOME/bin:$PATH
export GOPATH=$HOME

#matlab
export PATH=/usr/local/MATLAB/R2014b/bin:$PATH
alias matlab="matlab -nodesktop"


if  [[ `hostname` =~ 'grd' ]]
then

PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

fi



if  [[ `hostname` =~ 'wud' ]]
then

PS1='\[\e[1;37m\][\u@\h \W]\$\[\e[0m\] '

fi
