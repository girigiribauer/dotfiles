" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

" syntastic
let g:syntastic_scss_checkers = ['sass_lint']
let g:syntastic_scss_sass_lint_args = '-v -c ~/.sass-lint.yml'

" surround.vim
" VSt のあとのプロンプトに media query を入力して @include を入力しやすく
let b:surround_{char2nr("t")} = "@include mq(\1media_query: \r..*\r&\1) {\r}"
