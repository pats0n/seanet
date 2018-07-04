
srv=seanet

dirs='music/albums/'
dirs+=" videos/skydiving/"
dirs+=" videos/ifly/"
dirs+=" videos/flying/"
dirs+=" photos/publish/"
dirs+=" photos/public/"
dirs+=" photos/skydiving/"
dirs+=" flysight/"
dirs+=" photos/lrcat/"
dirs+=" videos/dr/"

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
