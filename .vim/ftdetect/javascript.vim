" ---------------------------------------------------------------------------- "
" filetype検出時の追加設定
" ---------------------------------------------------------------------------- "

function! s:LoadFileType()
  " JavaScript の syntax check
  let g:syntastic_javascript_checkers = ['jshint']
endfunction

augroup LoadFileTypeGroup
  autocmd!
  autocmd FileType javascript call s:LoadFileType()
augroup END

