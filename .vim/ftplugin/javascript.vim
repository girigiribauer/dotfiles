" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

if exists('#neobundle')
  NeoBundle 'pangloss/vim-javascript', {
        \ 'lazy': 1
        \ }
endif

" syntastic
let g:syntastic_javascript_checkers = ['jshint']

