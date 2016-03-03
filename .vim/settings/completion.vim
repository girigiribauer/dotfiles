" ---------------------------------------------------------------------------- "
" 補完、入力サポート系の設定
" ---------------------------------------------------------------------------- "

" ファイル名の補完
set wildmode=list:longest,full

" 補完のポップアップウィンドウ設定
set completeopt="menuone"

" neocomplete が自動で起動
let g:neocomplete#enable_at_startup = 1

" 補完が効く最小の文字数
let g:neocomplete#min_keyword_length = 3

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

" 閉じ括弧、閉じクオートの補完
" http://d.hatena.ne.jp/spiritloose/20061113/1163401194
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
