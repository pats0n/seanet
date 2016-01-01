#!/bin/bash

alias vim='vim -p'
alias vi='vim -p'
alias smap='smap -i2'

export PATH=$HOME/seanet:$PATH

export PATH=$HOME/projects/mtsdb/bin:$HOME/projects/mts/bin:$HOME/projects/atsdb/bin:$HOME/projects/atste/bin:$HOME/projects/mo/bin:$PATH
export PATH=$HOME/projects/mts/rtl/bin:$PATH

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
alias mts='cd $HOME/projects/mts/strats'
alias rtl='cd $HOME/projects/mts/rtl'
alias mtsdb='cd $HOME/projects/mtsdb/bin'
alias mtscfg='cd $HOME/projects/mtscfg'
alias mtsroot='cd $HOME/projects/mtsroot'

#rip500
export LD_LIBRARY_PATH=/usr/lib/chromium-browser/libs:$LD_LIBRARY_PATH
export PATH=/usr/lib/chromium-browser:$PATH

case "$-" in
*i*) git -C $HOME/seanet pull > /dev/null; git -C $HOME/seanet status -s
esac

export PATH=$HOME/bin:$PATH
export GOPATH=$HOME
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH

#matlab
export PATH=/usr/local/MATLAB/R2014b/bin:$PATH
alias matlab="matlab -nodesktop"

source $HOME/seanet/git-prompt.sh


if  [[ `hostname` =~ 'grd' ]] || [[ `hostname` =~ 'c0' ]] 
then

        PS1='\[\e[1;32m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

else

        PS1='\[\e[1;37m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

fi

export SLURM_CONF=$HOME/projects/mts/var/slurm.conf
