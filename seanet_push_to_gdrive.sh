dirs='videos/skydiving photos/skydiving music/albums photos/publish photos/public'

for d in $dirs 
do

        echo pushing $d 
        $HOME/bin/drive push --no-prompt=true $HOME/$d

done