" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

" syntastic
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_typescript_tslint_args = '-c ~/.tslintrc.json'
