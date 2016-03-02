" ---------------------------------------------------------------------------- "
" プラグイン管理
" ---------------------------------------------------------------------------- "

" neobundle 関連ファイルのない環境では実行しない
if glob('~/.vim/bundle/neobundle.vim/') == ''
  finish
endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath^=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

if neobundle#load_cache()
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#load_toml('~/.vim/settings/bundle.toml')
endif

call neobundle#end()
filetype plugin indent on

" 未インストールのものがあればインストール
NeoBundleCheck

