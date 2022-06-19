
sudo apt install neovim git python3-venv python3-dev cmake g++ clang-format

sudo snap install shfmt

sudo pip3 install jedi black pylint mypy pynvim

mkdir -p ~/.config/nvim

ln -s  ~/seanet/vimrc  ~/.vimrc
ln -s  ~/seanet/vimrc  ~/.config/nvim/init.vim

mkdir -p ~/.vim/bundle

cd ~/.vim/bundle

git clone https://github.com/gmarik/Vundle.vim 


#vim -c "VundleInstall | q | q"

