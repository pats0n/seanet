#!/bin/bash

alias vi="vim -p"

#mixer
alias mixer='cd ~/projects/fort/modules/mixer'

#cmeq2
alias cmeq2='cd ~/projects/fort/modules/cmeq2'

#bfl
alias bfl='cd ~/projects/fort/modules/bfl'

#bmx
alias bmx='cd ~/projects/fort/modules/bmx'

#bnb
alias bnb='cd ~/projects/fort/modules/bnb'

#bfx
alias bfx='cd ~/projects/fort/modules/bfx'

#lqd
alias lqd='cd ~/projects/fort/modules/lqd'

#okx
alias okx='cd ~/projects/fort/modules/okx'

#btse
alias btse='cd ~/projects/fort/modules/btse'

#huo
alias huo='cd ~/projects/fort/modules/huo'

#fort
alias fort='cd ~/projects/fort'

#tf
alias tf='cd ~/projects/tf'

#tp
alias tp='cd ~/projects/tp'

#kfix
alias kfix='cd ~/projects/tp/kfix'

#mdp3
alias mdp3='cd ~/projects/tp/mdp3'

#rtl
alias rtl='cd ~/projects/rtl'

#seanet
alias seanet="cd ~/seanet"

#tfn
alias tfn='cd ~/projects/tfn'
alias tfncfg='cd ~/projects/tfndata/cfgs'

#ats
alias atsdb="cd ~/projects/atsdb/bin"
alias atste="cd ~/projects/atste/dev/strats"

#mo
alias mo_root="cd ~/projects/mo/bin"
alias mo_dev="cd ~/projects/mo/dev/bin"

alias mo_prod='cd `ls ~/projects/mo/prod-2*/ -d | tail -1 `; cd bin;'
alias mo_scview='cd `ls ~/projects/mo/scview-2*/ -d | tail -1 `; cd bin;'
alias mo_optboard='cd `ls ~/projects/mo/optboard-2*/ -d | tail -1 `; cd bin;'
alias mo_deman='cd `ls ~/projects/mo/deman-2*/ -d | tail -1 `; cd bin;'
alias mo_hvol='cd `ls ~/projects/mo/hvol-2*/ -d | tail -1 `; cd bin;'

#golang
export GOPATH=~

#local packages
export PATH=~/bin:$PATH
export LD_LIBRARY_PATH=~/lib64:~/lib:$LD_LIBRARY_PATH

GIT_PS1_SHOWCOLORHINTS=1

source ~/seanet/git-prompt.sh

if  [[ `whoami` =~ 'btc' ]] || [[ `whoami` =~ 'cmeq2' ]]
then

    PS1='\[\e[1;31m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

elif  [[ `hostname` =~ 'seahorse' ]] || [[ `hostname` =~ 'seasnail' ]] || [[ `hostname` =~ 'seamonster' ]] || [[ `hostname` =~ 'qcl-' ]] || [[ `hostname` =~ 'jst-' ]] || [[ `hostname` =~ 'cmeq2-' ]] 
then

    PS1='\[\e[1;32m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

else

    PS1='\[\e[1;37m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

fi

case "$-" in

    *i*) pushd > /dev/null .; cd ~/seanet; git pull > /dev/null; git status -s; popd > /dev/null

esac

alias rmake="make -C \`git rev-parse --show-toplevel\`"
alias gitfclean='git submodule foreach git clean -xdf'

export PATH=/usr/lib/dart/bin:$PATH

