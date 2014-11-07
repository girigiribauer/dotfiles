" ---------------------------------------------------------------------------- "
" プラグイン管理
" ---------------------------------------------------------------------------- "

" neobundle がなければ以下は実行しない$
if glob('~/.vim/bundle/neobundle.vim') == ''
  finish
endif

set nocompatible
filetype off

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))

" self plugin
NeoBundleFetch 'Shougo/neobundle.vim'

" interface
NeoBundle 'Shougo/unite.vim'

" syntax
NeoBundle 'scrooloose/syntastic'

" completion
"NeoBundle 'Shougo/neocomplete'
"NeoBundle 'Shougo/neosnippet'
"NeoBundle 'Shougo/neosnippet-snippets'

" git, gist
NeoBundle 'lambdalisue/vim-gista', {
      \ 'depends': [
      \ 'Shougo/unite.vim',
      \ 'tyru/open-browser.vim',
      \]}

"NeoBundle 'cohama/agit.vim'

" filer
NeoBundle 'Shougo/vimfiler'

" expand
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'osyo-manga/vim-jplus'

" utility
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'Shougo/vimproc'
NeoBundle 'thinca/vim-quickrun'

" each filetype
NeoBundle 'othree/html5.vim', {
      \ 'lazy': 1,
      \ 'filetypes' : ['html']
      \ }
NeoBundle 'hokaccha/vim-html5validator', {
      \ 'lazy': 1,
      \ 'filetypes' : ['html']
      \ }
NeoBundle 'tpope/vim-markdown', {
      \ 'lazy': 1,
      \ 'filetypes' : ['markdown']
      \ }
NeoBundle 'stubbornella/csslint', {
      \ 'lazy': 1,
      \ 'filetypes' : ['css']
      \ }
NeoBundle 'hail2u/vim-css3-syntax', {
      \ 'lazy': 1,
      \ 'filetypes' : ['css']
      \ }
NeoBundle 'cakebaker/scss-syntax.vim', {
      \ 'lazy': 1,
      \ 'filetypes' : ['scss']
      \ }
NeoBundle 'pangloss/vim-javascript', {
      \ 'lazy': 1,
      \ 'filetypes' : ['javascript']
      \ }
NeoBundle 'elzr/vim-json', {
      \ 'lazy': 1,
      \ 'filetypes' : ['json']
      \ }

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

