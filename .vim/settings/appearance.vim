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
  autocmd GUIEnter * call <SID>AppearanceMacVim()
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
    autocmd BufNew,BufRead,BufWinEnter * call <SID>SOLSpaceHilight()
    autocmd BufNew,BufRead,BufWinEnter * call <SID>JISX0208SpaceHilight()
  augroup END

  " 行頭のスペースの連続をハイライトさせる関数
  " Tab文字も区別されずにハイライトされる
  function! s:SOLSpaceHilight()
    syntax match SOLSpace "^\s\+" display containedin=ALL
    highlight SOLSpace term=underline ctermbg=red guibg=red
  endf

  " 全角スペースをハイライトさせる関数
  function! s:JISX0208SpaceHilight()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=red guibg=red
  endf
endif

" 行末スペースを表示
highlight SpecialKey cterm=underline ctermfg=red ctermbg=red

" 行末、タブなどの代替表示文字
set listchars=eol:↵,tab:>-,extends:<,trail:#
