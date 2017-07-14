" ---------------------------------------------------------------------------- "
" $HOME/.vim/settings/statusline.vim
" ---------------------------------------------------------------------------- "

set showcmd

set showmode

set laststatus=2

let g:statusline_fileformats = {'dos': 'CR+LF', 'unix': 'LF', 'mac': 'CR'}
set statusline=%<[%n]%F%=\ %b(0x%B)\ %l,%c\ %p%%\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']'}%{'['.statusline_fileformats[&ff].']'}%{'['.(&bomb?'BOM':'NOBOM').']'}
