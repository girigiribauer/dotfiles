" ---------------------------------------------------------------------------- "
" ステータスラインの設定
" ---------------------------------------------------------------------------- "

" 入力途中のコマンドをステータス行に表示
set showcmd

" -- INSERT -- などのメッセージを表示 (showmode)
set showmode

" ステータスラインを常に表示
set laststatus=2

" ステータスのところにファイル情報表示
" rulerやrulerformatより優先される
set statusline=%<[%n]%F%=\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.(&bomb?'BOM':'NOBOM').']['.&ff.']'}\ %l,%c\ %P

