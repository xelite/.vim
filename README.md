### INSTALL
```bash
mv ~/.vim ~/.vim-old
git clone https://github.com:xelite/.vim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule update --init
```

### CHEETSHEET

#### normal mode
```
F1         select all
F8         next colorscheme
SHIFT+F8   perv colorscheme
F9         toggle list
F10        toggle nu
^p         ctrlp
^n         nerdtree
\scl       SQLUCreateColumnList
```

#### visual mode
```
\sf        SQLUFormatter
gc         comment selected text
```

### PLUGINS

* https://github.com/aperezdc/vim-template
* https://github.com/bling/vim-airline
* https://github.com/kien/ctrlp.vim
* https://github.com/scrooloose/nerdtree
* https://github.com/scrooloose/syntastic
* https://github.com/tpope/vim-commentary
* https://github.com/tpope/vim-fugitive
* https://github.com/vim-scripts/SQLUtilities

### SKINS

* dotshare.vim
* github.vim
* luna-term.vim
* luna.vim
* molokai.vim
* solarized.vim
* Tomorrow-Night-Blue.vim
* Tomorrow-Night-Bright.vim
* Tomorrow-Night-Eighties.vim
* Tomorrow-Night.vim
* Tomorrow.vim
* twilight.vim
