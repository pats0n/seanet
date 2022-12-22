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
Plugin 'myint/syntastic-extras'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-utils/vim-man'
Plugin 'psf/black'
Plugin 'roxma/nvim-yarp'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'davidhalter/jedi-vim'
Plugin 'ncm2/ncm2'
Plugin 'ncm2/ncm2-path'
Plugin 'ncm2/ncm2-bufword'
Plugin 'ncm2/ncm2-jedi'
Plugin 'ncm2/ncm2-neosnippet'
Plugin 'ncm2/ncm2-tmux'
" Plugin 'ncm2/ncm2-go'
" Plugin 'fatih/vim-go'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'dracula/vim'
Plugin 'jnurmine/Zenburn'
Plugin 'morhetz/gruvbox'
Plugin 'rhysd/vim-clang-format'
Plugin 'z0mbix/vim-shfmt'
Plugin 'chrisbra/csv.vim'
Plugin 'tpope/vim-rhubarb'
Plugin 'github/copilot.vim'


call vundle#end()

syntax on

filetype plugin indent on

au BufRead,BufNewFile *.ds set filetype=xml
au BufRead,BufNewFile *.def set filetype=cpp

set encoding=utf-8

set relativenumber nu

set termguicolors 

" colorscheme ron
" colorscheme dracula
colorscheme gruvbox

set hlsearch

set tabstop=4
set shiftwidth=4
set expandtab
set splitright

set switchbuf=useopen,usetab,newtab


"jedi-vim
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = 0
let g:jedi#use_splits_not_buffers = 'right'

"tagbar
let g:tagbar_position="left"
let g:tagbar_autoclose=1
nnoremap <silent> Q :TagbarToggle<CR>

"nerdtree
nnoremap <silent> <F9> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

"neosnippet
inoremap <silent> <expr> <CR> ncm2_neosnippet#expand_or("\<CR>", 'n')

"fzf.vim
nnoremap <silent> <C-P> :GitFiles<CR>
nnoremap <silent> <C-B> :History<CR>

"black
au FileType python nnoremap <silent> <buffer> <C-F> :Black<CR>

"ncm2
" let blacklist = ['cpp', 'hpp', 'go', 'sh', 'python'] 
let blacklist = ['cpp', 'hpp', 'go'] 
autocmd BufEnter * if index(blacklist, &ft) < 0 | call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
" make it FAST
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1,1]]
let g:ncm2#matcher = 'substrfuzzy'

"Plugin key-mappings.
"Note: It must be "imap" and "smap".  It uses <Plug> mappings.
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
let g:ycm_filetype_blacklist={ 'sh':1 }

au FileType cpp nnoremap <silent> <buffer> <leader>d :vsplit \| YcmCompleter GoToDeclaration<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>D :vsplit \| YcmCompleter GoToDefinition<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>i :vsplit \| YcmCompleter GoToInclude<CR>
au FileType cpp nnoremap <silent> <buffer> <leader>g :vsplit \| YcmCompleter GoTo<CR>
command FixIt YcmCompleter FixIt

"vim-clang-format
au FileType cpp nnoremap <silent> <buffer> <C-F> :ClangFormat<CR>

"vim-shfmt
au FileType sh nnoremap <silent> <buffer> <C-F> :Shfmt<CR>

"pydoc
let g:pydoc_open_cmd = 'vsp'
let g:pydoc_cmd="python3 -m pydoc"

"syntastic
let g:syntastic_auto_loc_list=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_disabled_filetypes = ['cpp' , 'hpp', 'go'] 

let g:syntastic_python_checkers = [ 'python' , 'mypy' ] 
au FileType python nnoremap <silent> <buffer> <leader>sp :SyntasticCheck pylint<CR>
au FileType python nnoremap <silent> <buffer> <leader>sm :SyntasticCheck mypy<CR>

let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_pylint_exec = '~/seanet/seanet_pylint.py'
" let g:syntastic_python_pylint_exec = 'pylint'

let g:syntastic_xml_checkers = [ 'xmllint' ] 
let g:syntastic_make_checkers = [ 'gnumake' ] 

"fugitive
set statusline+=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

"airline
let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod= ':t'

highlight LineNr ctermfg=243
highlight CursorLineNr ctermfg=243

"make
set makeprg=make\ -C\ `git\ rev-parse\ --show-toplevel`\ 
command Gmake make -j1

command SelToClip execute 'call system("xclip",@0)'

