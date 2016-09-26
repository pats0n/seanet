#!/bin/bash

alias vi="vim -p"

#kfix

alias kfix='cd $HOME/projects/kfix'

#rtl
alias rtl='cd $HOME/projects/tfn/rtl'

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

if  [[ `hostname` =~ 'ip-' ]] || [[ `hostname` =~ 'c0' ]] || [[ `hostname` =~ 'seahorse' ]] || [[ `hostname` =~ 'seasnake' ]]
then

    PS1='\[\e[1;32m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

elif  [[ `hostname` =~ 'kkc' ]]
then

    PS1='\[\e[1;31m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

else

    PS1='\[\e[1;37m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

fi

TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
"tmux_session_info 148 234" \
    "hostname 33 0" \
    #"ifstat 30 255" \
    #"ifstat_sys 30 255" \
    #"lan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
    "lan_ip 24 255 " \
    #"wan_ip 24 255" \
    #"vcs_branch 29 88" \
    #"vcs_compare 60 255" \
    #"vcs_staged 64 255" \
    #"vcs_modified 9 255" \
    #"vcs_others 245 0" \
    )

TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
#"earthquake 3 0" \
    #"pwd 89 211" \
    #"mailcount 9 255" \
    #"now_playing 234 37" \
    "cpu 240 136" \
    #"load 237 167" \
    #"tmux_mem_cpu_load 234 136" \
    #"battery 137 127" \
    #"weather 37 255" \
    #"rainbarf 0 ${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR}" \
    #"xkb_layout 125 117" \
    "date_day 235 136" \
    "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
    "time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
    "utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
    )


case "$-" in

    *i*) pushd > /dev/null $(pwd); cd $HOME/seanet; git pull > /dev/null; git status -s; popd > /dev/null

esac

