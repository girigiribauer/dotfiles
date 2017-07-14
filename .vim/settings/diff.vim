" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/diff.vim
" ---------------------------------------------------------------------------- "

if &diff
  set scrollbind

  set diffopt=filler

  set diffopt+=context:3

  set diffopt+=iwhite

  set diffopt+=vertical

  set diffopt+=foldcolumn:3
endif
