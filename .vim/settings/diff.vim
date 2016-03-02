" ---------------------------------------------------------------------------- "
" 差分表示
" ---------------------------------------------------------------------------- "

" 以下 diff mode のときのみ有効
if &diff
  " 同期スクロール
  set scrollbind

  " 差異のあるとき、空行で合わせる
  set diffopt=filler

  " 変更のあった行の上下を少し残して表示
  set diffopt+=context:3

  " 空白の数の違いを無視
  set diffopt+=iwhite

  " 垂直分割
  set diffopt+=vertical

  " 折り畳みを少しだけ表示
  set diffopt+=foldcolumn:3

  " diffchar.vim でワード単位の差分を自動表示
  augroup groupEnableDiffchar
    autocmd!
    autocmd VimEnter * execute '%SDChar'
  augroup end

  " diffchar.vim で単語単位を区切りにする
  let g:DiffUnit = "Word3"
endif

