cd `dirname $0`

echo source ~/seanet/vimrc > ~/.vimrc

mkdir -p ~/.vim/bundle

cd ~/.vim/bundle

git clone https://github.com/gmarik/Vundle.vim 


#vim -c "VundleInstall | q | q"
