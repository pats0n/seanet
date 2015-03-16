cd `dirname $0`

echo source ~/mybash/vimrc > ~/.vimrc

mkdir -p ~/.vim/bundle

git -C ~/.vim/bundle clone http://github.com/gmarik/Vundle.vim 




