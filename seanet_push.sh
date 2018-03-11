
srv=seanet

dirs='music/albums/'
dirs+=" videos/skydiving/"
dir+=" videos/ifly/"
dir+=" videos/flying/"
dir+=" photos/publish/"
dir+=" photos/public/"
dir+=" photos/skydiving/"
dir+=" flysight/"
dir+=" photos/lrcat/"
dir+=" videos/dr/"

if [ "${1}k" != 'okk' ]
then

    dry_run="--dry-run"
else
    echo REAL RUN !

fi


cd $HOME

for d in $dirs 
do

    if [ -d $d ] 
    then


        echo processing $d
        rsync -ah $d $srv:$d --delete $dry_run --size-only --info DEL,BACKUP,COPY,NAME
        echo 
    else
        echo skipping $d
    fi


done
