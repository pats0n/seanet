
srv=seanet.synology.me

dirs='music/albums/ videos/skydiving/ photos/publish/ photos/public/ photos/skydiving/'

if [ "${1}k" != 'okk' ]
then
        echo DRY RUN !
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
                rsync -ah $srv:$d $d --delete $dry_run --info DEL,BACKUP,COPY,NAME
                echo 
        fi


done
