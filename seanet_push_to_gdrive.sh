dirs='videos/skydiving photos/skydiving music/albums photos/publish photos/public projects/tfndata/ctpticks projects/tfndata/shfestatic projects/tfndata/ticks projects/erfs flysight'

for d in $dirs 
do

    if [ -d $HOME/$d ] 
    then
        echo pushing $d 
        $HOME/bin/drive push --verbose --no-prompt=true --ignore-name-clashes=true $HOME/$d
    fi 

done
