set langmenu=en_US.UTF-8
let $LANG='en_US.UTF-8'
filetype off
execute pathogen#infect()
filetype plugin on
set background=light
let g:solarized_termcolors=256
colorscheme solarized
set nocompatible
set modelines=0
"Set default tab style
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
set textwidth=80
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
"set colorcolumn=140
"correct defaults:
"http://items.sjbach.com/319/configuring-vim-right
set hidden
"http://www.oualline.com/vim-cook.html
set autowrite
"set listchars=tab:→\ ,trail:·
"set list
set mouse=a
set updatetime=500
set balloondelay=250
set noswapfile
set nobackup
set nowritebackup
" show info for completion candidates in a popup menu
if has("patch-8.1.1904")
  set completeopt+=popup
  set completepopup=align:menu,border:off,highlight:Pmenu
endif

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"nnoremap j gj
"nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

vmap <F3> "+y
let g:go_version_warning = 0

let g:ale_sign_warning = '⚠️'
let g:ale_sign_error = '❌'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title

" lightline
set noshowmode
let g:lightline = {
\'colorscheme': 'solarized',
\'active': {
\	'left': [['mode', 'paste'], ['filename', 'modified']],
\	'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\},
\'component_expand': {
\	'linter_warnings': 'LightlineLinterWarnings',
\	'linter_errors': 'LightlineLinterErrors',
\	'linter_ok': 'LightlineLinterOK'
\},
\'component_type': {
\	'readonly': 'error',
\	'linter_warnings': 'warning',
\	'linter_errors': 'error'
\},
\}
function! LightlineLinterWarnings() abort
	let l:counts = ale#statusline#Count(bufnr(''))
	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors
	return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction
function! LightlineLinterErrors() abort
	let l:counts = ale#statusline#Count(bufnr(''))
	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors
	return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction
function! LightlineLinterOK() abort
	let l:counts = ale#statusline#Count(bufnr(''))
	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors
	return l:counts.total == 0 ? '✓ ' : ''
endfunction

" markdownfmt
let g:markdownfmt_autosave=1
