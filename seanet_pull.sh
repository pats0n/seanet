
srv=seanet

dirs='music/albums/'
dirs+=' videos/skydiving/'
dirs+=' videos/flying/'
#dirs+=' photos/publish/'
#dirs+=' photos/public/'
dirs+=' photos/skydiving/'
dirs+=' flysight/'
dirs+=' videos/dr/'
dirs+=' videos/ifly/'
dirs+=' videos/flystation/'

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
        rsync -ah $srv:$d $d --delete $dry_run --size-only --info DEL,BACKUP,COPY,NAME
        echo 
    else 
        echo skipping $d
    fi


done
