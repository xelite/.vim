command W w !sudo tee % >/dev/null
set nu
syntax enable
set background=dark
colorscheme Tomorrow-Night-Eighties
"colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
map <F5> :setlocal spell! spelllang=pl<CR>
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
execute pathogen#infect()
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
map <C-Left> <Esc>:tabprev<CR>
map <C-Right> <Esc>:tabnext<CR>
map <C-Up> <Esc>:tabnew<CR>
map <F10> :set invnumber<CR>
map <F9> :set list!<CR>
set paste
" zaznacz wszystko
map <F1> <esc>ggVG<CR>

if v:version < 700 || exists('loaded_switchcolor') || &cp
    finish
endif

let loaded_switchcolor = 1

let paths = split(globpath(&runtimepath, 'colors/*.vim'), "\n")
let s:swcolors = map(paths, 'fnamemodify(v:val, ":t:r")')
let s:swskip = [ '256-jungle', '3dglasses', 'calmar256-light', 'coots-beauty-256', 'grb256' ]
let s:swback = 0    " background variants light/dark was not yet switched
let s:swindex = 0

function! SwitchColor(swinc)

    " if have switched background: dark/light
    if (s:swback == 1)
        let s:swback = 0
        let s:swindex += a:swinc
        let i = s:swindex % len(s:swcolors)

        " in skip list
        if (index(s:swskip, s:swcolors[i]) == -1)
            execute "colorscheme " . s:swcolors[i]
        else
            return SwitchColor(a:swinc)
        endif

    else
        let s:swback = 1
        if (&background == "light")
            execute "set background=dark"
        else
            execute "set background=light"
        endif

        " roll back if background is not supported
        if (!exists('g:colors_name'))
            return SwitchColor(a:swinc)
        endif
    endif

    " show current name on screen. :h :echo-redraw
    redraw
    execute "colorscheme"
endfunction
 map <F8>        :call SwitchColor(1)<CR>
imap <F8>   <Esc>:call SwitchColor(1)<CR>

 map <S-F8>      :call SwitchColor(-1)<CR>
imap <S-F8> <Esc>:call SwitchColor(-1)<CR>
"podświetlenie białych spacji
highlight RedundantWhitespace ctermbg=239 guibg=239
match RedundantWhitespace /\s\+$\| \+\ze\t/

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_highlighting = 0
let g:syntastic_auto_jump = 3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']
let g:syntastic_python_checkers = ['python']
let g:syntastic_yaml_checkers = ['pyyaml']

"SQLUtilities
vmap <silent>sf        <Plug>SQLU_Formatter<CR>
nmap <silent>scl       <Plug>SQLU_CreateColumnList<CR>
nmap <silent>scd       <Plug>SQLU_GetColumnDef<CR>
nmap <silent>scdt      <Plug>SQLU_GetColumnDataType<CR>
nmap <silent>scp       <Plug>SQLU_CreateProcedure<CR>

"vim-commentary
autocmd FileType apache set commentstring=#\ %s

"let g:templates_debug = 1
let g:templates_directory = '$HOME/.vim/templates'
let GIT_AUTHOR_NAME = $GIT_AUTHOR_NAME
let GIT_AUTHOR_EMAIL = $GIT_AUTHOR_EMAIL
let g:templates_user_variables = [['FULLPATH', 'GetFullPath'],['GIT_AUTHOR_EMAIL', 'GitAuthorEmail'], ['GIT_AUTHOR_NAME', 'GitAuthorName']]
function GetFullPath()
    return expand('%:p')
endfunction
function GitAuthorEmail()
    return expand('$GIT_AUTHOR_EMAIL')
endfunction
function GitAuthorName()
    return expand('$GIT_AUTHOR_NAME')
endfunction

"airline
let g:Powerline_symbols = "fancy"
let g:airline_powerline_fonts = 1
