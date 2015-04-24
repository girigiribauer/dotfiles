" ---------------------------------------------------------------------------- "
" filetype検出時の追加設定
" ---------------------------------------------------------------------------- "

function! s:LoadFileType()
  " Haskell の syntax check
  let g:syntastic_haskell_checkers = ['ghc_mod']
endfunction

augroup LoadFileTypeGroup
  autocmd!
  autocmd FileType haskell call s:LoadFileType()
augroup END

