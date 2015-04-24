" ---------------------------------------------------------------------------- "
" filetype検出時の追加設定
" ---------------------------------------------------------------------------- "

function! s:LoadFileType()
  " html の syntax check
  let g:syntastic_html_checkers = ['validator']
  let g:syntastic_html_validator_parser = 'html5'
  let g:syntastic_html_validator_api = 'http://validator.w3.org/nu/'

  " emmet.vim
  imap <buffer><expr><tab>
        \ emmet#isExpandable() ? "\<plug>(emmet-expand-abbr)" :
        \ "\<tab>"
endfunction

augroup LoadFileTypeGroup
  autocmd!
  autocmd FileType html call s:LoadFileType()
augroup END

