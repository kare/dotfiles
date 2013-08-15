filetype off
call pathogen#incubate()
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
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

set encoding=utf-8
set scrolloff=5
set showmode
set showcmd
set ignorecase
set smartcase
set gdefault
set hlsearch
set hidden
set wildignore=*.o,*.bak,*.class
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set swapfile
set dir=~/tmp
set relativenumber
set textwidth=120
set formatoptions=qrn1
set cindent
set smartindent
set title
set backspace=indent,eol,start
set noerrorbells
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
set listchars=tab:→\ ,trail:·
set list

" better java higlighting
let java_highlight_java_lang_ids = 1
let java_allow_cpp_keywords = 1
" RagTag
let g:ragtag_global_maps = 1

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
autocmd FocusLost * :wa
