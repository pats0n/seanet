cd $HOME

mkdir -p ~/gitbackup

date=$(date +%Y%m%d)

tar -cf - git-repos/* | gzip - > ~/gitbackup/gitbackup.$date.tar.gz

echo $(date) starting push ...

$HOME/bin/drive push -verbose -no-prompt=True gitbackup/gitbackup.$date.tar.gz > /dev/null

echo $(date) finished push 

