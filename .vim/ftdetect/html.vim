" ---------------------------------------------------------------------------- "
" filetype検出時の追加設定
" ---------------------------------------------------------------------------- "

" html の syntax check
let g:syntastic_html_checkers = ['validator', 'tidy']
let g:syntastic_html_validator_parser = 'html5'
