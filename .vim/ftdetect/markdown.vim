" ---------------------------------------------------------------------------- "
" filetype検出時の追加設定
" ---------------------------------------------------------------------------- "

function! s:LoadFileType()
  " タブが対応する空白の数
  setlocal tabstop=4

  " インデント量
  setlocal shiftwidth=4
endfunction

augroup LoadFileTypeGroup
  autocmd!
  autocmd FileType markdown call s:LoadFileType()
augroup END

