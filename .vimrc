execute pathogen#infect()
set nocompatible
syntax on
set shiftwidth=2
set tabstop=2
"set autoindent
"set cindent
set smartindent
set expandtab
set showcmd
set hlsearch
set incsearch
set title
"set scrolloff=3
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
set encoding=utf-8

filetype plugin indent on
set backspace=indent,eol,start
set noerrorbells
set ruler
set shell=/bin/zsh
"http://www.oualline.com/vim-cook.html
set autowrite

"correct defaults:
"http://items.sjbach.com/319/configuring-vim-right
set hidden

"automatically insert matching brace
inoremap { {<CR><BS>}<Esc>ko
" Grep word under cursor when key 'arrow right' is pressed
"nmap <Right> :vimgrep <cword> `find . -type f -exec grep -Iq '' '{}' ';' -print`<CR>:copen<CR>

" Clear search highlighting with esc
"nnoremap <esc> :nohl<return><esc>

set undodir=~/.vim/undo
set undofile
set undolevels=1000
set undoreload=10000

autocmd FileType java set tags=~/.java-tags
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
set runtimepath+=/usr/local/Cellar/go/1.1.1/misc/vim
