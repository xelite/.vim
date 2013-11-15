command W w !sudo tee % >/dev/null
set nu
syntax enable
set background=dark
colorscheme solarized 
let g:molokai_original = 1
let g:rehash256 = 1
map <F5> :setlocal spell! spelllang=pl<CR>
set hlsearch
set incsearch
set clipboard=unnamed
execute pathogen#infect()
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-Up> <Esc>:tabnew<CR>
map <F12> :set invnumber<CR>
