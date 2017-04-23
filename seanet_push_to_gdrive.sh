#!/bin/bash

dirs=
dirs+=" videos/skydiving"
dirs+=" videos/flying"
dirs+=" photos/skydiving"
dirs+=" music/albums"
dirs+=" photos/publish"
dirs+=" photos/public" 
dirs+=" projects/tfndata/ctpticks" 
dirs+=" projects/tfndata/shfestatic" 
dirs+=" projects/tfndata/ticks" 
dirs+=" projects/tp_ticks" 
dirs+=" projects/erfs" 
dirs+=" source"
dirs+=" flysight"


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
