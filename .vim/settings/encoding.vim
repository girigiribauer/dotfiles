" ---------------------------------------------------------------------------- "
" 文字コードや改行コードなど、日本語に関わる設定
" ---------------------------------------------------------------------------- "

" 文字コードの自動補完リスト
" この中から順にマッチしたものが fileencoding として使われる
set fileencodings=utf-8,ucs-bom,iso-2022-jp,sjis,cp932,euc-jp,cp20932

" デフォルトの改行コード設定
set fileformat=unix

" 改行コードの自動判別リスト
" この中から順にマッチしたものが fileformat として使われる
set fileformats=unix,dos,mac

" インサートモードで日本語入力を勝手に ON にしない
set iminsert=0

" 検索モードで日本語入力を勝手に ON にしない
set imsearch=0

" East Asian Width Class Ambiguous な文字をどう扱うかを定める
" しかくとかほしとか全角っぽい文字に対して2文字分のスペースを確保したい
if exists('&ambiwidth')
  set ambiwidth=double
endif

" BOM なしをデフォルトに
set nobomb

