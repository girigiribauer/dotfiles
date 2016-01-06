" ---------------------------------------------------------------------------- "
" 表示、見た目
" ---------------------------------------------------------------------------- "

" シンタックスハイライトを有効にする
syntax on

" 色数
set t_Co=256

" カラースキーマ定義
colorscheme elflord
"colorscheme molokai

" 黒背景ベースに
set background=dark

" GUI macvimの設定
if has("gui_macvim")
  " MacVim のカラースキームは使わない
  let macvim_skip_colorscheme=1

  " MacVim 用の上書き設定
  augroup macvim
    autocmd! macvim
    autocmd GUIEnter * call <SID>AppearanceMacVim()
  augroup END

  " GUI が有効になったタイミングで必要最低限の設定上書き
  " （できるだけ CLI に似せる）
  function! s:AppearanceMacVim()
    set transparency=20
    set background=dark
    set lines=90
    set columns=150
    set guioptions-=gmrLtT
    set guifont=Osaka-Mono:h12
  endf
endif

" カラースキーマに足りてない部分を上書き
" ヴィジュアルモード選択時
highlight Visual cterm=reverse guifg=NONE guibg=NONE

if has("syntax")
  " 下記関数をバッファ新規作成,読み込み時,ウィンドウ表示時に実行
  augroup invisible
    autocmd! invisible
    autocmd BufNew,BufRead,BufWinEnter * call <SID>SOLSpaceHighlights()
    autocmd BufNew,BufRead,BufWinEnter * call <SID>JISX0208SpaceHighlights()
  augroup END

  " 行頭のスペースの連続をハイライトさせる関数
  " Tab文字も区別されずにハイライトされる
  function! s:SOLSpaceHighlights()
    syntax match SOLSpace "^\s\+" display containedin=ALL
    highlight SOLSpace term=underline ctermbg=red guibg=red
  endf

  " 全角スペースをハイライトさせる関数
  function! s:JISX0208SpaceHighlights()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=red guibg=red
  endf
endif

" 行末スペースを表示
highlight SpecialKey cterm=underline ctermfg=red ctermbg=red

" 行末、タブなどの代替表示文字
set listchars=tab:>-,extends:<,trail:#

" QuickFixを自動的に開く
augroup QuickfixSettings
  autocmd! QuickfixSettings
  autocmd QuickfixCmdPost * copen
augroup END

" 端末オプションによる点滅表示
" :set termcap で確認可能
" http://ttssh2.sourceforge.jp/manual/ja/usage/tips/vim.html
"
" 起動時 ブロック型の点滅カーソル
let &t_ti.="\e[1 q"

" 挿入モードに入る時 縦棒の点滅カーソル
" （5: 低速, 6: 高速）
let &t_SI.="\e[5 q"

" 挿入モードを出る時 ブロック型の点滅カーソル
let &t_EI.="\e[1 q"

" 終了時 点滅カーソル終了
let &t_te.="\e[0 q"

