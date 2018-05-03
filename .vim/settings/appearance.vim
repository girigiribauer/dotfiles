" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/appearance.vim
" ---------------------------------------------------------------------------- "

scriptencoding utf-8

syntax on

set t_Co=256

colorscheme brogrammer

set background=dark

highlight Normal guibg=NONE ctermbg=NONE

if has("gui_macvim")
  let g:macvim_skip_colorscheme=1

  augroup macvim
    autocmd! macvim
    autocmd GUIEnter * call <SID>AppearanceMacVim()
  augroup END

  function! s:AppearanceMacVim()
    set transparency=20
    set background=dark
    set lines=90
    set columns=150
    set guioptions-=gmrLtT
    set guifont=Osaka-Mono:h12
  endf
endif

highlight Visual cterm=reverse guifg=NONE guibg=NONE

" highlight start of line spaces
function! s:SOLSpaceHighlights()
  syntax match SOLSpace "^\s\+" display containedin=ALL
  highlight SOLSpace term=underline ctermfg=244 ctermbg=236 guifg=#838586 guibg=#2f2f2f
endf

" highlight end of line spaces
function! s:EOLSpaceHighlights()
  syntax match EOLSpace "\s\+$" display containedin=ALL
  highlight EOLSpace ctermfg=15 ctermbg=167 guifg=#ffffff guibg=#e74c3c
endf

" highlight unicode spaces
" '᠎, , , , , , , , , , , , , , , ,　'
function! s:UnicodeSpaceHighlights()
  syntax match UnicodeSpaces /\%u180E\|\%u2000\|\%u2001\|\%u2002\|\%u2003\|\%u2004\|\%u2005\|\%u2006\|\%u2007\|\%u2008\|\%u2009\|\%u200A\|\%u2028\|\%u2029\|\%u202F\|\%u205F\|\%u3000/ display containedin=ALL
  highlight UnicodeSpaces term=underline ctermbg=red guibg=red
endf

augroup appearance_settings
  autocmd! appearance_settings
  autocmd BufNew,BufRead,BufWinEnter * call <SID>SOLSpaceHighlights()
  autocmd BufNew,BufRead,BufWinEnter * call <SID>EOLSpaceHighlights()
  autocmd BufNew,BufRead,BufWinEnter * call <SID>UnicodeSpaceHighlights()
augroup END

set listchars=tab:>-,extends:<,trail:#
highlight SpecialKey term=underline ctermfg=white ctermbg=red guifg=white guibg=red

highlight clear NonText

augroup quickfix_settings
  autocmd! quickfix_settings
  autocmd QuickfixCmdPost * copen
augroup END

" termcap settings (see :h termcap)
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
