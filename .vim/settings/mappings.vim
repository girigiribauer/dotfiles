" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/mappings.vim
" ---------------------------------------------------------------------------- "

command! Sudow :w !sudo tee >/dev/null %

command! Reload :source ~/.vimrc

let g:mapleader = "\<Space>"

noremap ; :
noremap : ;

nnoremap <C-H> :tabprevious<CR>
nnoremap <C-L> :tabnext<CR>
nnoremap <C-N> :tabnew<Space>

vnoremap <silent> <C-p> "0p<CR>

nnoremap <CR> o<ESC>

noremap <F1> <Nop>
noremap! <F1> <Nop>

nnoremap <silent><Leader>j :tabnew .<CR>

nnoremap <C-W>% :vsplit<CR>
nnoremap <C-W>" :split<CR>

nnoremap <Esc><Esc> :set nohlsearch<CR>

"nnoremap <C-i><C-i> :help<Space><C-r><C-w><CR>
nnoremap <C-i><C-i> K

" regex setting
" see :h magic, :h /\v
" http://qiita.com/m-yamashita/items/5755ca2717c8d5be57e4
nnoremap / /\v

nnoremap Q <Nop>
