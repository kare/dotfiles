filetype off
call pathogen#incubate()
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on
set background=light
let g:solarized_termcolors=256
colorscheme solarized
set nocompatible
set modelines=0
"Set default tab style
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"Set tabbing policy per file
au FileType zsh,scala,bash,html,javascript,ruby setl tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType c,erlang,haskell,java,markdown,python setl tabstop=4 softtabstop=4 shiftwidth=4 expandtab
au FileType go,perl,make setl tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
set hidden
set autoread
set wildignore=*.o,*.bak
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set swapfile
set dir=~/tmp
set laststatus=2
set relativenumber
set wrap
set textwidth=120
set formatoptions=qrn1
set cindent
set smartindent
set showcmd
set title
set backspace=indent,eol,start
set noerrorbells
set ruler
set shell=/bin/zsh
" Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000
"set colorcolumn=140
"correct defaults:
"http://items.sjbach.com/319/configuring-vim-right
set hidden
"http://www.oualline.com/vim-cook.html
set autowrite
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

"automatically insert matching brace
inoremap { {<CR><BS>}<Esc>ko
" Grep word under cursor when key 'arrow right' is pressed
"nmap <Right> :vimgrep <cword> `find . -type f -exec grep -Iq '' '{}' ';' -print`<CR>:copen<CR>

" Clear search highlighting with esc
"nnoremap <esc> :nohl<return><esc>
