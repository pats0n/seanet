#!/bin/bash

alias vi="vim -p"

#dot
alias dot='cd $HOME/projects/dot'
alias dot_paper='cd $HOME/projects/dot_paper'
alias dotcfg='cd $HOME/projects/dotdata/cfgs'

#tf
alias tf='cd $HOME/projects/tf'

#tp
alias tp='cd $HOME/projects/tp'

#kfix
alias kfix='cd $HOME/projects/tp/kfix'

#mdp3
alias mdp3='cd $HOME/projects/tp/mdp3'

#rtl
alias rtl='cd $HOME/projects/rtl'

#seanet
alias seanet="cd $HOME/seanet"

#tfn
alias tfn='cd $HOME/projects/tfn'
alias tfncfg='cd $HOME/projects/tfndata/cfgs'

#ats
alias atsdb="cd $HOME/projects/atsdb/bin"
alias atste="cd $HOME/projects/atste/dev/strats"

#mo
alias mo_root="cd $HOME/projects/mo/bin"
alias mo_dev="cd $HOME/projects/mo/dev/bin"

alias mo_prod='cd `ls ~/projects/mo/prod-2*/ -d | tail -1 `; cd bin;'
alias mo_scview='cd `ls ~/projects/mo/scview-2*/ -d | tail -1 `; cd bin;'
alias mo_optboard='cd `ls ~/projects/mo/optboard-2*/ -d | tail -1 `; cd bin;'
alias mo_deman='cd `ls ~/projects/mo/deman-2*/ -d | tail -1 `; cd bin;'
alias mo_hvol='cd `ls ~/projects/mo/hvol-2*/ -d | tail -1 `; cd bin;'

#mts
alias mts='cd $HOME/projects/mts'
alias mtsdb='cd $HOME/projects/mtsdb/bin'
alias mtscfg='cd $HOME/projects/mtscfg'
alias mtsroot='cd $HOME/projects/mtsroot'

#rip500
export LD_LIBRARY_PATH=/usr/lib/chromium-browser/libs:$LD_LIBRARY_PATH
export PATH=/usr/lib/chromium-browser:$PATH

#golang
export GOPATH=$HOME

#local packages
export PATH=$HOME/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib64:$HOME/lib:$LD_LIBRARY_PATH

GIT_PS1_SHOWCOLORHINTS=1

source $HOME/seanet/git-prompt.sh

if  [[ `hostname` =~ 'seahorse' ]] || [[ `hostname` =~ 'seasnake' ]] || [[ `hostname` =~ 'akrasilnikov' ]]
then

    PS1='\[\e[1;32m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

elif  [[ `hostname` =~ 'kkc' ]] || [[ `hostname` =~ 'trd' ]] || [[ `hostname` =~ 'ip-' ]] || [[ `hostname` =~ 'grid' ]]
then

    PS1='\[\e[1;31m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

else

    PS1='\[\e[1;37m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

fi

case "$-" in

    *i*) pushd > /dev/null $(pwd); cd $HOME/seanet; git pull > /dev/null; git status -s; popd > /dev/null

esac

