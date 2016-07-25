dirs='videos/skydiving photos/skydiving music/albums photos/publish photos/public bvrt'

for d in $dirs 
do

        echo pushing $d 
        $HOME/bin/drive push --no-prompt=true --ignore-name-clashes=true $HOME/$d

done
