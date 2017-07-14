" ---------------------------------------------------------------------------- "
" $HOME/.vim/ftplugin/typescript.vim
" ---------------------------------------------------------------------------- "

" syntastic
let g:syntastic_typescript_checkers = ['tslint', 'tsuquyomi']
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_tslint_args = '-c ~/.tslintrc.json'
