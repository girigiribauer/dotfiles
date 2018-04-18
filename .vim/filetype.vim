" ---------------------------------------------------------------------------- "
" $HOME/.vim/filetype.vim
" ---------------------------------------------------------------------------- "

autocmd BufRead,BufNewFile *.as set filetype=actionscript

autocmd BufRead,BufNewFile *.{md,mkd} set filetype=markdown

autocmd BufRead,BufNewFile *.toml set filetype=toml

autocmd BufRead,BufNewFile *.twig set filetype=twig

autocmd BufRead,BufNewFile *.ts set filetype=typescript

autocmd BufRead,BufNewFile *.ejs set filetype=html

autocmd BufRead,BufNewFile *.plist set filetype=xml

autocmd BufRead,BufNewFile .tmux.conf set filetype=tmux

autocmd BufRead,BufNewFile nginx.conf set filetype=nginx

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
