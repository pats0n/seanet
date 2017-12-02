
srv=seanet

dirs='music/albums/ videos/skydiving/ videos/flying/ photos/publish/ photos/public/ photos/skydiving/ flysight/ videos/openshot/ photos/lrcat/'

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
