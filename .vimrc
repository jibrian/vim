execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ag_working_path_mode="r"
let g:airline_powerline_fonts = 1 

filetype plugin on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
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
colorscheme jellybeans
set background=dark

autocmd Filetype ruby setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.html.erb setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.js.jsx setlocal tabstop=2 shiftwidth=2
autocmd BufRead,BufNewFile *.ts setlocal tabstop=2 shiftwidth=2

map <leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>

let mapleader=','
if exists(":Tabularize")
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>
    nmap <Leader>a: :Tabularize /:\zs<CR>
    vmap <Leader>a: :Tabularize /:\zs<CR>
endif
