set langmenu=en_US.UTF-8
let $LANG='en_US.UTF-8'
execute pathogen#infect()
filetype plugin on
"""""""""""""""
set background=light
colorscheme solarized
set termguicolors " true-color support for lightline
set laststatus=2 " show ligthline statusbar
set noshowmode " don't show insert mode in lightline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set splitbelow
set splitright
set titleold=
set pastetoggle=<F2>
set encoding=utf-8
set scrolloff=5
set showmode
set showcmd
set smartcase
set gdefault
set hlsearch
set hidden
set wildignore=*.o,*.bak,*.class
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set relativenumber
"set textwidth=150
set formatoptions=qrn1
set autoindent
set smartindent
filetype indent on
set title
set backspace=indent,eol,start
set noerrorbells
set shell=/bin/zsh
" Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000
set noswapfile
set nobackup
set nowritebackup
" noh - no highlight search
map <esc> :noh <CR>

"""""""""""""""
vmap <F3> "+y
set shortmess=atI

let g:lightline = {
	\ 'colorscheme': 'solarized',
\ }

"""""""""""""""

let g:ale_linters = {
	\ 'go': [],
\}

"""""""""""""""

" bottom command window height in lines
set cmdheight=2
"let $GOFLAGS = "-tags=integration"
" This file represents the minimal .vimrc needed to work with govim.
"
" We also include a number of suggested settings that we think the majority of
" users will like/prefer.

set nocompatible
set nobackup
set nowritebackup
set noswapfile
set mouse=a

" To get hover working in the terminal we need to set ttymouse. See
"
" :help ttymouse
"
" for the appropriate setting for your terminal. Note that despite the
" automated tests using xterm as the terminal, a setting of ttymouse=xterm
" does not work correctly beyond a certain column number (citation needed)
" hence we use ttymouse=sgr
set ttymouse=sgr

" Suggestion: By default, govim populates the quickfix window with diagnostics
" reported by gopls after a period of inactivity, the time period being
" defined by updatetime (help updatetime). Here we suggest a short updatetime
" time in order that govim/Vim are more responsive/IDE-like
set updatetime=500

" Suggestion: To make govim/Vim more responsive/IDE-like, we suggest a short
" balloondelay
set balloondelay=250

" Suggestion: Turn on the sign column so you can see error marks on lines
" where there are quickfix errors. Some users who already show line number
" might prefer to instead have the signs shown in the number column; in which
" case set signcolumn=number
set signcolumn=yes

" Suggestion: Turn on syntax highlighting for .go files. You might prefer to
" turn on syntax highlighting for all files, in which case
"
syntax on
"
" will suffice, no autocmd required.
"autocmd! BufEnter,BufNewFile *.go,go.mod syntax on
"autocmd! BufLeave *.go,go.mod syntax off

" Suggestion: turn on auto-indenting. If you want closing parentheses, braces
" etc to be added, https://github.com/jiangmiao/auto-pairs. In future we might
" include this by default in govim.
set autoindent
set smartindent
filetype indent on

" Suggestion: define sensible backspace behaviour. See :help backspace for
" more details
"set backspace=2

" Suggestion: show info for completion candidates in a popup menu
if has("patch-8.1.1904")
  set completeopt+=popup
  set completepopup=align:menu,border:off,highlight:Pmenu
endif
