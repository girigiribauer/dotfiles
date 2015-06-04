" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

if exists('#neobundle')
  NeoBundle '2072/PHP-Indenting-for-VIm', {
        \ 'lazy': 1
        \ }
  NeoBundle 'violetyk/neocomplete-php.vim', {
        \ 'lazy': 1
        \ }
endif

" syntastic
let g:syntastic_php_checkers = ['phpcs']
let g:syntastic_php_phpcs_args='--standard=psr2'

