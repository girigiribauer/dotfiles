" ---------------------------------------------------------------------------- "
" $HOME/.vimrc (Vim and NeoVim entrypoint)
" ---------------------------------------------------------------------------- "

set encoding=utf-8
scriptencoding utf-8

set runtimepath^=$HOME/.vim

source $HOME/.vim/settings/bundles.vim
source $HOME/.vim/settings/encoding.vim
source $HOME/.vim/settings/basic.vim
source $HOME/.vim/settings/statusline.vim
source $HOME/.vim/settings/diff.vim
source $HOME/.vim/settings/completion.vim
source $HOME/.vim/settings/appearance.vim
source $HOME/.vim/settings/mappings.vim
source $HOME/.vim/settings/network.vim

if filereadable($HOME . "/.vimrc.local")
  source $HOME/.vimrc.local
endif
