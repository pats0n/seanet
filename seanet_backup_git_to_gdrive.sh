cd $HOME

mkdir -p ~/gitbackup


tar -cf - git-repos/* | gzip - > ~/gitbackup/gitbackup.tar.gz

$HOME/bin/drive push  -no-prompt=True gitbackup



