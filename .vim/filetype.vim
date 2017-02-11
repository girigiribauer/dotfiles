" ---------------------------------------------------------------------------- "
" filetype の決定のみ行い、 filetype ごとの設定は ftplugin 以下に書く
" ---------------------------------------------------------------------------- "

" .as を ActionScript 形式として認識する
autocmd BufRead,BufNewFile *.as set filetype=actionscript

" .md .mkd を Markdown 形式として認識する
autocmd BufRead,BufNewFile *.{md,mkd} set filetype=markdown

" .toml を TOML 形式として認識する
autocmd BufRead,BufNewFile *.toml set filetype=toml

" .ts を TypeScript 形式として認識する
autocmd BufRead,BufNewFile *.ts set filetype=typescript

" .ejs を HTML 形式として認識する
autocmd BufRead,BufNewFile *.ejs set filetype=html

" .plist を xml 形式として認識する
autocmd BufRead,BufNewFile *.plist set filetype=xml

" .tmux.conf を tmux 形式として認識する
autocmd BufRead,BufNewFile .tmux.conf set filetype=tmux

" nginx.conf を nginx 形式として認識する
autocmd BufRead,BufNewFile nginx.conf set filetype=nginx
