#!/bin/bash

# alias vi="nvim -p"
# alias vim="nvim -p"

alias vi="nvim"
alias vim="nvim"

#m3
alias m3='cd ~/projects/m3'

#mdc
alias mdc='cd ~/projects/m3/mdc'

#blx
alias blx='cd ~/projects/m3/blx'

#umm
alias umm='cd ~/projects/m3/umm'

#srv03
alias srv01='cd ~/projects/fort/modules/srv01'

#mixer
alias mixer='cd ~/projects/fort/modules/mixer'

#strats
alias strats='cd ~/projects/fort/modules/strats'

#strat
alias strat='cd ~/projects/fort/modules/strats/ftx_eth_bp_ts'

#live
alias live=' cd ~/projects/fort/modules/strats/live/ftx_eth_bp_ts'

#bfl
alias bfl='cd ~/projects/fort/modules/bfl'

#ftx
alias ftx='cd ~/projects/fort/modules/ftx'

#btse
alias btse='cd ~/projects/fort/modules/btse'

#huo
alias huo='cd ~/projects/fort/modules/huo'

#fort
alias fort='cd ~/projects/fort'

#golang
export GOPATH=$HOME

#local packages
export PATH=~/bin:$PATH

GIT_PS1_SHOWCOLORHINTS=1

source ~/seanet/git-prompt.sh

if [[ $(whoami) =~ 'btc' || $(whoami) =~ 'ubuntu' ]]; then

	PS1='\[\e[1;31m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

elif [[ $(hostname) =~ 'grid' || $(hostname) =~ 'wrk' ]]; then

	PS1='\[\e[1;32m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

elif [[ $(hostname) =~ 'jst' ]]; then

	PS1='\[\e[1;31m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

else

	PS1='\[\e[1;37m\][\u@\h \W]$(__git_ps1) $STY \$\[\e[0m\] '

fi

case "$-" in

*i*)
	pushd >/dev/null .
	cd ~/seanet
	git pull >/dev/null
	git status -s
	popd >/dev/null
	;;

esac

alias Gmake="make -C \`git rev-parse --show-toplevel\`"
alias gitfclean='git submodule foreach git clean -xdf'
