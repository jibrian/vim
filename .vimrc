execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ag_working_path_mode="r"
let g:airline_powerline_fonts = 1 
"let g:vdebug_options={} 
let g:vdebug_options = { 'ide_key': 'vagrant', 'break_on_open': 0, 'port' : 9002, 'server' : '', 'path_maps' : {'/home/vagrant/Code/moonlight': '/Users/brianji/sites/moonlight'} }

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

map <f2> :NERDTreeToggle<CR>
map <leader>p :set paste<cr>o<esc>"*]p:set nopaste<cr>

