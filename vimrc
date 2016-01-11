set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fs111/pydoc.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/Dockerfile.vim'

if v:version > 703
    Plugin 'Valloric/YouCompleteMe'
endif

call vundle#end()


syntax on

filetype plugin indent on

au BufRead,BufNewFile *.ds set filetype=xml
au BufRead,BufNewFile *.def set filetype=cpp

command Wamake wa | make -j5

command PrettyFormat execute '%! astyle -A2 -F -S -K -C -q --lineend=linux' | go 1 | %s/{$/{\r/g | %s/\s\+$//e | %s/\n\{3,}/\r\r/e 

set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab

set switchbuf=useopen,usetab,newtab

"YouCompleteMe (ycm)
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_highlighting = 0
"let g:ycm_filetype_whitelist =  { 'cpp' : 1, 'hpp' : 1 }
let g:ycm_filetype_blacklist =  { '*.py' : 1 } 
"let g:ycm_always_populate_location_list=1

"pydoc
let g:pydoc_open_cmd = 'tabnew'

"syntastic
let g:syntastic_disabled_filetypes = ['cpp' , 'hpp' ] 
let g:syntastic_python_checkers = [ 'pyflakes' ] 
let g:syntastic_xml_checkers = [ 'xmllint' ] 

"ctrp
set wildignore+=*.o,*.o.d,*.a,*.pyc
let g:ctrlp_show_hidden=1

"fugitive
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

"jedivim
"let g:jedi#completions_command = "<C-N>"

