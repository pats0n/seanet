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

filetype plugin indent on

au BufRead,BufNewFile *.ds set filetype=xml

map <F5> :wa \| make  <CR>

map <F8> :%! astyle -A2 -F -S -K -C --lineend=linux<CR> gg=G :%s/{$/{\r/g <CR> :%s/\s\+$//e <CR> :%s/\n\{3,}/\r\r/e <CR> 

set swb=usetab

set hlsearch
set expandtab

set switchbuf=useopen,usetab,newtab

cabbrev help tab help

"YouCompleteMe (ycm)
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_filetype_whitelist =  { 'cpp' : 1, 'hpp' : 1}
let g:ycm_always_populate_location_list=1

"pydoc
let g:pydoc_open_cmd = 'tabnew'

"pyflakes
highlight SpellBad term=reverse ctermbg=2

"syntastic
let g:syntastic_disabled_filetypes = ['cpp' , 'hpp' ]
let g:syntastic_python_checkers = [ 'pyflakes' ] 
let g:syntastic_xml_checkers = [ 'xmllint' ] 

"ctrp
set wildignore+=*.o,*.o.d,*.a,*.pyc
let g:ctrlp_show_hidden=1
