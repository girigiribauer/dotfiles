" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/bundles.vim
" ---------------------------------------------------------------------------- "

" plugin manager settings
if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.config/nvim/bundles/repos/github.com/Shougo/dein.vim
let dein_plugin_dir='~/.cache/dein'

if dein#load_state(dein_plugin_dir)
  call dein#begin(dein_plugin_dir)

  call dein#add('$HOME/.config/nvim/bundles/repos/github.com/Shougo/dein.vim')

  command! DeinInstall call dein#install()
  command! DeinUpdate call dein#update()
  command! DeinClean call map(dein#check_clean(), "delete(v:val, 'rf')")

  call dein#load_toml('$HOME/.config/nvim/settings/bundles.toml', {'lazy': 0})
  call dein#load_toml('$HOME/.config/nvim/settings/bundles-filetypes.toml', {'lazy': 0})

  call dein#end()
  call dein#save_state()

endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
