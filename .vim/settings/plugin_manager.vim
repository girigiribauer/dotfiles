" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/plugin_manager.vim
" ---------------------------------------------------------------------------- "

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#load_toml('$HOME/.vim/settings/syntax.toml')
  call dein#load_toml('$HOME/.vim/settings/linter.toml')
  call dein#load_toml('$HOME/.vim/settings/searcher.toml')
  call dein#load_toml('$HOME/.vim/settings/completion.toml')
  call dein#load_toml('$HOME/.vim/settings/enhancement.toml')
  call dein#load_toml('$HOME/.vim/settings/diff.toml')
  call dein#load_toml('$HOME/.vim/settings/vcs.toml')
  call dein#load_toml('$HOME/.vim/settings/filer.toml')
  " call dein#load_toml('bundles.toml')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

