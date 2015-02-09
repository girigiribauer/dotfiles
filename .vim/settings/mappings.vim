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

"Escの2回押しでハイライト消去
nnoremap <Esc><Esc> :set nohlsearch<CR>

" カーソル下のキーワード(ctrl-r_ctrl_w)をヘルプでひく
nnoremap <C-i><C-i> :help<Space><C-r><C-w><CR>

" 正規表現をできるだけ違和感なく使う
" :h magic, :h /\v
" http://qiita.com/m-yamashita/items/5755ca2717c8d5be57e4
nnoremap / /\v
