cd $HOME

mkdir -p ~/gdrive/gitbackup


tar -cf - git-repos/* | gzip - > ~/gdrive/gitbackup/gitbackup.tar.gz

cd ~/gdrive
$HOME/bin/drive push  -no-prompt=True gitbackup



