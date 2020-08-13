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
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-utils/vim-man'
Plugin 'pignacio/vim-yapf-format'
Plugin 'roxma/nvim-yarp'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'ncm2/ncm2'
Plugin 'ncm2/ncm2-path'
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-jedi'
Plugin 'ncm2/ncm2-neosnippet'
Plugin 'ncm2/ncm2-tmux'
" Plugin 'ncm2/ncm2-go'
Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'


call vundle#end()

syntax on

filetype plugin indent on

au BufRead,BufNewFile *.ds set filetype=xml
au BufRead,BufNewFile *.def set filetype=cpp


set relativenumber nu

set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab
set splitright

set switchbuf=useopen,usetab,newtab

" neosnippet
inoremap <silent> <expr> <CR> ncm2_neosnippet#expand_or("\<CR>", 'n')

"fzf.vim
map <C-P>  :GitFiles<CR>
" map <C-R>  :History<CR>

"yapf-format
map <C-F> :YapfFullFormat<CR>

"ncm2
let blacklist = ['cpp', 'hpp', 'go'] 
" let blacklist = ['cpp', 'hpp'] 
autocmd BufEnter * if index(blacklist, &ft) < 0 | call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
" make it FAST
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1,1]]
let g:ncm2#matcher = 'substrfuzzy'


" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif



"ycm
let g:ycm_confirm_extra_conf = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list=1
let g:ycm_python_binary_path='python3'
let g:ycm_filetype_blacklist={ 'python':1 }

"pydoc
let g:pydoc_open_cmd = 'vsp'

"syntastic
" let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_disabled_filetypes = ['cpp' , 'hpp', 'go'] 

let g:syntastic_python_checkers = [ 'mypy', 'pylint'  ] 

let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pylint_exec = 'pylint'

let g:syntastic_xml_checkers = [ 'xmllint' ] 

"fugitive
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

"airline
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 1

colorscheme ron

highlight LineNr ctermfg=243
highlight CursorLineNr ctermfg=243

set encoding=utf-8

command W wa | make -j1

command PrettyFormat execute '%! astyle -A2 -F -S -K -C -q --lineend=linux' | go 1 | %s/{$/{\r/g | %s/\s\+$//e | %s/\n\{3,}/\r\r/e 

command SelToClip execute 'call system("xclip",@0)'

command Pylint w | SyntasticCheck pylint
command MyPy w | SyntasticCheck mypy

command FixIt YcmCompleter FixIt
