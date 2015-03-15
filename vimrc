set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"Plugin 'kevinw/pyflakes-vim'
Plugin 'fs111/pydoc.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on

au BufRead,BufNewFile *.ds set filetype=xml
let g:pydoc_open_cmd = 'tabnew'

"set viminfo='10,\"100,:20,%,n~/.viminfo

map <F5> :wa \| make <CR>
map <F2> :tabnew ../.. <CR>
map <F4> :q <CR>

map <F8> :%! astyle -A2 -F --lineend=linux<CR> gg=G :%s/{$/{\r/g <CR> :%s/\s\+$//e <CR> :%s/\n\{3,}/\r\r/e <CR> 


":set swb=usetab

" this is for pyflakes
highlight SpellBad term=reverse ctermbg=2

set hlsearch
set expandtab

set switchbuf=useopen,usetab,newtab

"nnoremap <CR> :noh<CR><CR>
"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_checkers =  ['']
let g:syntastic_python_checkers =  ['pyflakes']
