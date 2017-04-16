"VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

call vundle#end()            " required

"PATHOGEN
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ag_working_path_mode="r"
let g:Powerline_symbols = 'fancy'
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

filetype plugin on
syntax on
set tabstop=4
set shiftwidth=4
set noexpandtab
set relativenumber
set mouse=a
set noswapfile
set smarttab 
set autoindent
set noruler
set incsearch
set showmatch
set hlsearch
set noshowmode
set backspace=indent,eol,start
set laststatus=2
set colorcolumn=110
set background=dark

colorscheme jellybeans
highlight ColorColumn ctermbg=darkgray

autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.html.erb setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.js.jsx setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.ts setlocal tabstop=2 shiftwidth=2

let mapleader=','

map <leader>p :set paste<cr>"*]p:set nopaste<cr>

if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
