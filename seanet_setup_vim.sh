
mkdir -p $HOME/downloads

cd $HOME/downloads

wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.deb

sudo dpkg -i nvim-linux64.deb

sudo apt install git python3-venv python3-dev cmake g++ clang-format xclip libxml2-utils

sudo snap install shfmt

sudo pip3 install jedi black pylint mypy pynvim

mkdir -p ~/.config/nvim

# ln -s  ~/seanet/vimrc  ~/.vimrc
ln -s  ~/seanet/vimrc  ~/.config/nvim/init.vim

mkdir -p ~/.vim/bundle

cd ~/.vim/bundle

git clone https://github.com/gmarik/Vundle.vim 


nvim +VundleInstall

cd ~/.vim/bundle/YouCompleteMe

./install.py --clang-completer

