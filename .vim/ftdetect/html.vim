" ---------------------------------------------------------------------------- "
" filetype検出時の追加設定
" ---------------------------------------------------------------------------- "

" html の syntax check
let g:syntastic_html_checkers = ['validator']
let g:syntastic_html_validator_parser = 'html5'
let g:syntastic_html_validator_api = 'http://validator.w3.org/nu/'
