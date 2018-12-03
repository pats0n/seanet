set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fs111/pydoc.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-utils/vim-man'

call vundle#end()

syntax on

filetype plugin indent on

au BufRead,BufNewFile *.ds set filetype=xml
au BufRead,BufNewFile *.def set filetype=cpp

command W wa | make -j1

command PrettyFormat execute '%! astyle -A2 -F -S -K -C -q --lineend=linux' | go 1 | %s/{$/{\r/g | %s/\s\+$//e | %s/\n\{3,}/\r\r/e 
command SelToClip execute 'call system("xclip",@0)'

set relativenumber nu

set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab
set splitright

set switchbuf=useopen,usetab,newtab

"YouCompleteMe (ycm)
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list=1
let g:ycm_python_binary_path='python'

"pydoc
let g:pydoc_open_cmd = 'vsp'

"syntastic
let g:syntastic_disabled_filetypes = ['cpp' , 'hpp' ] 
"let g:syntastic_python_checkers = [ 'python' ] 
" let g:syntastic_python_checkers = [ 'pylint' ] 
let g:syntastic_python_checkers = [ 'pyflakes' ] 
"let g:syntastic_python_pylint_args =  '--errors-only'
let g:syntastic_xml_checkers = [ 'xmllint' ] 

"ctrlp
set wildignore+=*.o,*.o.d,*.a,*.pyc,_*,var
let g:ctrlp_show_hidden=1

"fugitive
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

"airline
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 1

colorscheme ron

highlight LineNr ctermfg=243
highlight CursorLineNr ctermfg=243
