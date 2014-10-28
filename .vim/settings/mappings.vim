" ---------------------------------------------------------------------------- "
" キーマッピング設定
" ---------------------------------------------------------------------------- "

" <Leader>キーをデフォルトのバックスラッシュから変更する
let mapleader = ","

" ノーマルモード、ビジュアルモードなどでコロンとセミコロンを入れ替える
noremap ; :
noremap : ;

" 簡単にタブページの操作ができるようにする
if v:version>=700
  nnoremap <C-H> :tabprevious<CR>
  nnoremap <C-L> :tabnext<CR>
  nnoremap <C-N> :tabnew<Space>
endif

" ヤンクしたものを連続ペーストする(C-pで)
vnoremap <silent> <C-p> "0p<CR>

" ノーマルモードでもenterキーで改行挿入
nnoremap <CR> o<ESC>

" F1 でヘルプ立ち上げない、そもそもF1使わない
noremap <F1> <Nop>
noremap! <F1> <Nop>

" カレントディレクトリのオープン
nnoremap <silent><Leader>j :tabnew .<CR>

" ウィンドウ分割を tmux に似たマッピングに
nnoremap <C-W>% :vsplit<CR>
nnoremap <C-W>" :split<CR>

