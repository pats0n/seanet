cd $HOME

mkdir -p ~/gitbackup

date=$(date +%Y%m%d)


tar -cf - qcl-git/* | gzip - > ~/gitbackup/qclgitbackup.$date.tar.gz

echo $(date) starting push ...

$HOME/bin/drive push -verbose -no-prompt=True gitbackup/qclgitbackup.$date.tar.gz > /dev/null

echo $(date) finished push 

