" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/basic.vim
" ---------------------------------------------------------------------------- "

set nocompatible

filetype plugin indent on

set backspace=indent,eol,start

set nobackup

set history=1000

set noundofile

set whichwrap=b,s,h,l,<,>,~,[,]

" show whitespaces
set list

set autoread

set notitle

set noswapfile

set hidden

set formatoptions=crMmoql

set visualbell t_vb=

set textwidth=0

set scrolloff=5

" use OS clipboard
set clipboard=unnamed

set noautochdir

set display+=lastline

set number
if exists('&relativenumber')
  set relativenumber
endif

" use modeline (Vim oneline settings)
set modeline
set modelines=5

" use only decimal number
set nrformats=""

set showmatch

" showmatch duration per 0.1 seconds
set matchtime=10

set autoindent

set smartindent

set expandtab

set tabstop=2

set shiftwidth=2

set softtabstop=0

set wrapscan

set ignorecase

set smartcase

set incsearch

set hlsearch

set tabpagemax=128

set t_BE=

if has("nvim")
  let g:python_host_prog = $PYENV_ROOT . '/shims/python'
  let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'
endif
