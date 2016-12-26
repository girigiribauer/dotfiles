" ---------------------------------------------------------------------------- "
" 各種プラグインの共通設定
" ---------------------------------------------------------------------------- "

" NeoBundle のプラグインが入っていなければ実行しない
if !exists('#neobundle')
  finish
endif

" ---------------------------------------------------------------------------- "
" interface
" ---------------------------------------------------------------------------- "

" Unite用のキーマップ
nnoremap [unite] <Nop>
nmap <Space><Space> [unite]

nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir
      \ -buffer-name=files buffer bookmark file<CR>
nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir
      \ -buffer-name=files -prompt=%\  buffer bookmark file<CR>
nnoremap <silent> [unite]r  :<C-u>Unite
      \ -buffer-name=register register<CR>
nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
nnoremap <silent> [unite]f
      \ :<C-u>Unite -buffer-name=resume resume<CR>
nnoremap <silent> [unite]ma
      \ :<C-u>Unite mapping<CR>
nnoremap <silent> [unite]me
      \ :<C-u>Unite output:message<CR>
nnoremap  [unite]f  :<C-u>Unite source<CR>

nnoremap <silent> [unite]s
      \ :<C-u>Unite -buffer-name=files -no-split
      \ jump_point file_point buffer_tab
      \ file_rec:! file file/new<CR>

" Start insert.
call unite#custom#profile('default', 'context', {
      \   'start_insert': 1
      \ })

" Unite開いたとき、最初にインサートモードにする
let g:unite_enable_start_insert=1

" Uniteで使うディレクトリを各ホームディレクトリ直下にする
let g:unite_data_directory=$HOME.'/.unite'

" タブで開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-l>
\ unite#do_action('tabopen')
au FileType unite inoremap <silent> <buffer> <expr> <C-l>
\ unite#do_action('tabopen')

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" [unite] + t で :Unite tab
nnoremap <silent> [unite]t :<C-u>Unite tab<CR>

" submode.vim でウィンドウリサイズを連打で行う
"if exists("*g:submode#enter_with")
  call submode#enter_with('winsize', 'n', '', '<C-w>>', '<C-w>>')
  call submode#enter_with('winsize', 'n', '', '<C-w><', '<C-w><')
  call submode#enter_with('winsize', 'n', '', '<C-w>+', '<C-w>+')
  call submode#enter_with('winsize', 'n', '', '<C-w>-', '<C-w>-')
  call submode#map('winsize', 'n', '', '>', '<C-w>>')
  call submode#map('winsize', 'n', '', '<', '<C-w><')
  call submode#map('winsize', 'n', '', '+', '<C-w>+')
  call submode#map('winsize', 'n', '', '-', '<C-w>-')
"endif



" ---------------------------------------------------------------------------- "
" syntax
" ---------------------------------------------------------------------------- "

" エラー箇所の表示をオンに
let g:syntastic_enable_signs = 1

" すべてのファイルのチェックをデフォルトオンに
let g:syntastic_mode_map = { 'mode': 'active',
\ 'active_filetypes': [],
\ 'passive_filetypes': [] }

" 保存して終了などのときは動作しないようにする
" （popup だけ残っちゃったりするので off に）
let g:syntastic_check_on_wq = 0

" 自動でロケーションリストを開閉する
let g:syntastic_auto_loc_list = 1

" ロケーションリストの高さ
let g:syntastic_loc_list_height = 5

" エラーのときのアイコン
let g:syntastic_error_symbol = 'E'

" 警告のときのアイコン
let g:syntastic_warning_symbol = 'w'

" テキストフォーマット
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" 自動整形に関する設定
let g:phpfmt_standard = 'PSR2'
let g:phpfmt_autosave = 1



" ---------------------------------------------------------------------------- "
" completion
" ---------------------------------------------------------------------------- "

" syntax 補完は邪魔になるので OFF
call neocomplete#custom#source('syntax', 'disabled', 1)



" ---------------------------------------------------------------------------- "
" git, gist
" ---------------------------------------------------------------------------- "

" 各々のユーザー名
let g:gista#github_user=$GITHUB_USERNAME

" Gist なので [unite] キーバインドに g で呼べるように
nnoremap <silent> [unite]g :<C-u>Unite gista<CR>



" ---------------------------------------------------------------------------- "
" filer
" ---------------------------------------------------------------------------- "

" デフォルトでvimfilerをオンにする
let g:vimfiler_as_default_explorer=1

" セーフモードをオフにする（破壊的な変更などを許可）
let g:vimfiler_safe_mode_by_default=0

" 通常openをtabpageでのopenにする
let g:vimfiler_edit_action='tabopen'

" デフォルトで無視するファイル名のパターン（すべて無視しない）
let g:vimfiler_ignore_pattern=''



" ---------------------------------------------------------------------------- "
" expand
" ---------------------------------------------------------------------------- "

" getchar() で挿入する文字を入力
nmap <leader>J <Plug>(jplus-getchar)
vmap <leader>J <Plug>(jplus-getchar)

" getchar() ではなくて input() を使用する場合
nmap <Space>J <Plug>(jplus-input)
vmap <Space>J <Plug>(jplus-input)

let g:user_emmet_leader_key = '<C-y>'



" ---------------------------------------------------------------------------- "
" utility
" ---------------------------------------------------------------------------- "

" デフォルトの QuickRun 用キーバインドは使わない
let g:quickrun_no_default_key_mappings = 1

" QuickRun キーバインド
nnoremap <Space>r :QuickRun<CR>

" QuickRun 設定
let g:quickrun_config = {
      \   "_" : {
      \       "outputter" : "multi:buffer:quickfix",
      \       "outputter/buffer/split" : ":botright 10sp",
      \       "runner": "vimproc",
      \       "runner/vimproc/updatetime": 40
      \   }
      \}

" vim-rooter
" http://rcmdnk.github.io/blog/2014/07/25/computer-vim/
"if !empty(neobundle#get('vim-rooter'))
"  let g:rooter_patterns = ['public', '.git/']
"endif

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

