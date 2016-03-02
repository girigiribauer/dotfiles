" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

" syntastic
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args='--standard=psr2'

" whitespace
setlocal tabstop=4
setlocal shiftwidth=4
