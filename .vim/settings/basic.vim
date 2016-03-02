" ---------------------------------------------------------------------------- "
" 基本的な設定いろいろ
" ---------------------------------------------------------------------------- "

" vi 互換ではなく Vim 拡張にする
set nocompatible

" ファイルタイプの検出、ファイルタイププラグイン
" インデントファイルを使う
filetype plugin indent on

" バックスペースでなんでも消せるように
set backspace=indent,eol,start

" バックアップファイルを作らない (file~ みたいなの)
set nobackup

" コマンド、検索パターンのヒストリ
set history=1000

" undo 用ファイルを作らず
if version >= 703
  set noundofile
endif

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,~,[,]

" 表示されない文字を表示させる
set list

" 他で書き換えられたら自動で読み直す
set autoread

" タイトル表示させない
set notitle

" スワップファイルを作らない
set noswapfile

" 編集中でも他のファイルを開けるようにする
set hidden

" テキスト整形オプション
" c: 幅に合わせてコメントを自動折返し
" r: 挿入モードで <Enter> を打ち込んだ後のコメント自動挿入
" l: 長い行の自動折り返しをしない
" M: 行の連結時に、マルチバイト文字の前後に空白を挿入しない
" m: マルチバイト文字の間でも改行する
" o: ノーマルモードから挿入モードのコメント自動挿入
set formatoptions=crMmoql

" ビープをならさない
set visualbell t_vb=

" 一行に長い文章を書いていても自動折り返しをしない
set textwidth=0

" スクロール時の余白確保
set scrolloff=5

" OSのクリップボードを使用する
" fakeclip 導入したので unnamed に
set clipboard=unnamed

" 常に今のディレクトリを起点にする
set autochdir

" Ctrl+cをinsert modeの強制終了ではなく、通常終了に置き換える
" 強制終了なくなると、100aとか打った時やばいと思ったので一旦消しとく
"inoremap <C-c> <ESC>

" 長い行でかつ最後の行の場合、可能な限り中身を表示する
set display+=lastline

" 行番号の表示
se nonumber

" 行番号を相対的に表示する
" これをオンにすると、set numberがオフになる
if version >= 703
  set relativenumber
else
  set number
endif

" モードラインをONにする
" ファイルの上か下に書いてあるvim設定が有効になる
" /* vim:set sw=2 */ とか
" # vi: set ft=ruby : とか
set modeline

" モードラインとして探す行数、上下からこれだけ探す
set modelines=5

" <C-A>, <C-X> で10進数としてのみ扱う
set nrformats=""

" 括弧入力時に対応する括弧を表示
set showmatch

" 対応する括弧を表示 (0.1秒単位）
set matchtime=10

" 自動でインデント
set autoindent

" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set smartindent

" タブ入力を半角スペースにする
set expandtab

" タブが対応する空白の数
set tabstop=2

" インデント量
set shiftwidth=2

" キーボード入力のタブ量、0で無効（tabstop などに従う、基本使わない）
set softtabstop=0

" 最後まで検索したら先頭へ戻る
set wrapscan

" 大文字小文字無視
set ignorecase

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索文字をハイライト
set hlsearch

" タブページで開くときの最大ページ数
set tabpagemax=50
