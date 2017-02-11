" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/bundles.vim
" ---------------------------------------------------------------------------- "

" dein.vim の初期設定
if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state('$HOME/.vim/bundles')
  call dein#begin('$HOME/.vim/bundles')

  call dein#load_toml('$HOME/.vim/settings/bundles.toml', {'lazy': 0})

  call dein#end()
  call dein#save_state()

  if dein#check_install()
    call dein#install()
  endif
endif

filetype plugin indent on
syntax enable
