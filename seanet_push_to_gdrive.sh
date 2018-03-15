#!/bin/bash

dirs=
dirs+=" videos/skydiving"
dirs+=" videos/flying"
dirs+=" videos/dr"
dirs+=" photos/skydiving"
dirs+=" music/albums"
dirs+=" photos/publish"
dirs+=" photos/public" 
dirs+=" projects/bfldata" 
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
