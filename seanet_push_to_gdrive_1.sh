#!/bin/bash

dirs=

# dirs+=" photos/publish"
# dirs+=" photos/public" 
# dirs+=" photos/private"
# dirs+=" photos/archive"
# dirs+=" photos/skydiving"
# dirs+=" photos/lrcat"

# dirs+=" videos/dr"
# dirs+=" videos/tunnels"
# dirs+=" videos/skydiving"

# dirs+=" videos/flying"

# dirs+=" music/albums"

# dirs+=" flysight"
# dirs+=" source"

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
