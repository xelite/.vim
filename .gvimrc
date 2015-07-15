set nu
syntax enable
set background=dark
colorscheme molokai
set hlsearch
set incsearch
set clipboard=unnamed
set cursorline
set laststatus=2
set tabstop=4
set shiftwidth=4
set shiftround
set ignorecase
set smartcase
set smarttab
set softtabstop=4
set autoindent
set smartindent
set expandtab
set mouse=c
filetype plugin indent on
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"gvim
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set guifont=DejaVu\ Sans\ Mono\ 12
