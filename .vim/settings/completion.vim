" ---------------------------------------------------------------------------- "
" 補完、入力サポート系の設定
" ---------------------------------------------------------------------------- "

" ファイル名の補完
set wildmode=list:longest,full

" neocomplete が自動で起動
let g:neocomplete#enable_at_startup = 1

" neosnippet のキーマッピング
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" tabキー拡張
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" snipmate 用の snippet ファイルも使えるように
let g:neosnippet#enable_snipmate_compatibility = 1

" snippet 用のディレクトリ
let g:neosnippet#snippets_directory = [
\ '~/.vim/bundle/vim-snippets/snippets',
\ '~/.vim/snippets'
\]

" neosnippet-snippets は使わない
let g:neosnippet#disable_runtime_snippets = {
\   '_' : 1,
\ }

