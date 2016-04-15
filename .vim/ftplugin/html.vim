" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

" syntastic
let g:syntastic_html_checkers = ['validator']
let g:syntastic_html_validator_parser = 'html5'
let g:syntastic_html_validator_api = 'http://validator.w3.org/nu/'

" DOCTYPE 内のテキストでバリデーション方法変更
augroup GroupValidateMethod
  autocmd!
  autocmd BufWritePre *.html call ValidateMethod()
  function! ValidateMethod()
    if (search('-//W3C//DTD HTML 4.01', 'n')>0)
      echomsg "html 4.01"
      let g:syntastic_html_validator_parser = 'html4tr'

    elseif (search('-//W3C//DTD XHTML 1.0', 'n')>0)
      echomsg "XHTML 1.0"
      let g:syntastic_html_validator_parser = 'xml'

    else
      let g:syntastic_html_validator_parser = 'html5'
    endif
  endfunction
augroup end
