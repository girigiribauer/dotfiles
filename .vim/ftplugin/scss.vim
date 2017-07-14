" ---------------------------------------------------------------------------- "
" $HOME/.vim/ftplugin/scss.vim
" ---------------------------------------------------------------------------- "

" syntastic
let g:syntastic_scss_checkers = ['sass_lint']
let g:syntastic_scss_sass_lint_args = '-v -c ~/.sass-lint.yml'

" surround.vim
" support media query input
let b:surround_{char2nr("t")} = "@include mq(\1media_query: \r..*\r&\1) {\r}"
