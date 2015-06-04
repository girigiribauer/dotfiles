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
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'honza/vim-snippets'

" diff
NeoBundle 'vim-scripts/diffchar.vim'

" git, gist
NeoBundle 'cohama/agit.vim'
NeoBundle 'lambdalisue/vim-gista', {
      \ 'depends': [
      \ 'Shougo/unite.vim',
      \ 'tyru/open-browser.vim',
      \]}

" filer
NeoBundle 'Shougo/vimfiler'

" expand
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/matchit.zip'
NeoBundle 'osyo-manga/vim-jplus'
NeoBundle 'mattn/emmet-vim'

" utility
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'Shougo/vimproc'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'junegunn/vim-easy-align'


call neobundle#end()
filetype plugin indent on
NeoBundleCheck

