" ---------------------------------------------------------------------------- "
" $HOME/.vim/ftplugin/go.vim
" ---------------------------------------------------------------------------- "

" help
let g:go_doc_keywordprg_enabled = 1

" gopath
let g:go_bin_path = "$GOPATH/bin"

" golint path
execute "set runtimepath+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")

" gocode path
execute "set runtimepath+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

" syntastic check
let g:syntastic_go_checkers = ['go', 'golint', 'govet']

" whitespace
setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2

" on saving
let g:go_fmt_autosave = 1

" highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
