#!/bin/bash

dirs=
dirs+=" projects/bfldata" 
dirs+=" projects/bfl_states" 
dirs+=" projects/bfxdata" 
dirs+=" projects/bmxdata" 
dirs+=" projects/bnbdata" 
dirs+=" projects/lqddata" 
dirs+=" projects/huodata" 
dirs+=" projects/okxdata" 
dirs+=" projects/btsedata" 
dirs+=" projects/huo_states" 
dirs+=" projects/cmeq2_data" 

for d in $dirs 
do

    if [ -d $HOME/$d ] 
    then
        echo pushing $d 
        $HOME/bin/drive push --verbose --no-prompt=true --ignore-name-clashes=true $HOME/$d
    else
        echo skipping non-existing $d
    fi

done
