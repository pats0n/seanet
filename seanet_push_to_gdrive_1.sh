#!/bin/bash

dirs=

#dirs+=" photos/publish"
#dirs+=" photos/public" 
#dirs+=" photos/skydiving"

dirs+=" videos/flystation"
dirs+=" videos/skydiving"
dirs+=" videos/flying"
dirs+=" videos/dr"

dirs+=" music/albums"

dirs+=" flysight"
dirs+=" source"

dirs+=" projects/cmeq2_data" 
dirs+=" projects/tp_ticks" 

dirs+=" vm" 

#dirs+=" qcl_vault"

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
