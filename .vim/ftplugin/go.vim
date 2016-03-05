" ---------------------------------------------------------------------------- "
" filetype がマッチした場合のみ以下実行
" ---------------------------------------------------------------------------- "

" gopath
let g:go_bin_path = "$GOPATH/bin"

" golint path
execute "set runtimepath+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")

" gocode path
execute "set runtimepath+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")

" syntastic check
" go の通常の文法チェックに通してから golint に通す
" go vet でよくありがちなミスにつながる箇所をチェック
let g:syntastic_go_checkers = ['go', 'golint', 'govet']

" whitespace
setlocal expandtab
setlocal tabstop=2
setlocal shiftwidth=2

" mapping
nmap <Tab><Tab> <Plug>(go-doc)

" on saving
let g:go_fmt_autosave = 1

" err を赤にする
" http://yuroyoro.hatenablog.com/entry/2014/08/12/144157
highlight goErr cterm=bold ctermfg=214
match goErr /\<err\>/

" highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
