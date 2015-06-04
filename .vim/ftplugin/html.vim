" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

if exists('#neobundle')
  NeoBundle 'othree/html5.vim', {
        \ 'lazy': 1
        \ }
  NeoBundle 'hokaccha/vim-html5validator', {
        \ 'lazy': 1
        \ }
endif

" syntastic
let g:syntastic_html_checkers = ['validator']
let g:syntastic_html_validator_parser = 'html5'
let g:syntastic_html_validator_api = 'http://validator.w3.org/nu/'

" emmet.vim
"imap <buffer><expr><tab>
"      \ emmet#isExpandable() ? '\<plug>(emmet-expand-abbr)' :
"      \ '\<tab>'

