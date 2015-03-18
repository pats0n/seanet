cd `dirname $0`

echo source ~/mybash/vimrc > ~/.vimrc

mkdir -p ~/.vim/bundle

cd ~/.vim/bundle

git clone http://github.com/gmarik/Vundle.vim 


vim -c "VundleInstall | q | q"

