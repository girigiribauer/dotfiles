" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

" gopath
let g:go_bin_path = "$GOPATH/bin"

" highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" http://yuroyoro.hatenablog.com/entry/2014/08/12/144157
highlight goErr cterm=bold ctermfg=214
match goErr /\<err\>/

" syntastic
if $GOPATH != ''
  execute "set runtimepath+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
  let g:syntastic_go_checkers = ['golint']
endif

" whitespace
setlocal noexpandtab
setlocal tabstop=4
setlocal shiftwidth=4

" mapping
nmap <Tab><Tab> <Plug>(go-doc)

" on saving
let g:go_fmt_autosave = 1

