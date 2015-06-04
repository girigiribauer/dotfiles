" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

if exists('#neobundle')
  NeoBundle 'stubbornella/csslint', {
        \ 'lazy': 1
        \ }
  NeoBundle 'hail2u/vim-css3-syntax', {
        \ 'lazy': 1
        \ }
endif
