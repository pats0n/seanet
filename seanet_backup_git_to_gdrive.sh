cd $HOME

mkdir -p ~/gitbackup

date=$(date +%Y%m%d)


tar -cf - git-repos/* | gzip - > ~/gitbackup/gitbackup.${date}.tar.gz

$HOME/bin/drive push  -no-prompt=True gitbackup/gitbackup.${date}.tar.gz

