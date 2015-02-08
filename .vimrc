set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kevinw/pyflakes-vim'
Plugin 'fs111/pydoc.vim'

call vundle#end()

filetype plugin indent on

au BufRead,BufNewFile *.ss set filetype=xml
let g:pydoc_open_cmd = 'tabnew'

"set viminfo='10,\"100,:20,%,n~/.viminfo

map <F5> :wa \| make <CR>
map <F2> :tabnew ../.. <CR>
map <F4> :q <CR>

":set swb=usetab

" this is for pyflakes
highlight SpellBad term=reverse ctermbg=2

set hlsearch
set expandtab

"
