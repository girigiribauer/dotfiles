" ---------------------------------------------------------------------------- "
" filetype が有効になった時点で読み込み
" ---------------------------------------------------------------------------- "

" .as を actionscript形式として認識する
au BufRead,BufNewFile *.as set filetype=actionscript

" .md .mkd を markdown形式として認識する
au BufRead,BufNewFile *.{md,mkd} set filetype=markdown

