# ----------------------------------------
# basic settings
# ----------------------------------------

# http://chneukirchen.org/blog/archive/2012/02/10-new-zsh-tricks-you-may-not-know.html
# 見直すために、まずは man しやすい環境にする
zman() {
  PAGER="less -q -g -s '+/^       "$1"'" man zshall
}

# lang
export LANG=ja_JP.UTF-8

# SHELL
export SHELL='/bin/zsh'

# EDITOR
# MacVim があればそちらを使う
# I love Vim.
PATH="/Applications/MacVim.app/Contents/MacOS:$PATH"
export EDITOR=/usr/bin/vim
if [ -f /Applications/MacVim.app/Contents/MacOS/Vim ]; then
  export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
  alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -p "$@"'
  alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim -p "$@"'
fi

# keybind (like emacs)
# C-a, C-e, C-w とか使いたい
bindkey -e

# C-w でパス単位に削除したい
# http://ikm.hatenablog.jp/entry/2014/07/31/213052
tcsh-backward-delete-word() {
  local WORDCHARS="${WORDCHARS:s#/#}"
  zle backward-delete-word
}
zle -N tcsh-backward-delete-word
bindkey "^W" tcsh-backward-delete-word

# TERM
# http://vim.wikia.com/wiki/256_colors_in_vim
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

# PATH
# Homebrew と coreutils を使う
# http://ja.wikipedia.org/wiki/Homebrew_(%E3%83%91%E3%83%83%E3%82%B1%E3%83%BC%E3%82%B8%E7%AE%A1%E7%90%86%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0)
# http://ja.wikipedia.org/wiki/Coreutils
export PATH=/usr/local/Cellar:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/usr/local/bin
export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH

# PATH (npm)
export PATH="$HOME/.npm:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"

# MANPATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH
export MANPATH=$MANPATH:/opt/local/man

# LESS
export LESS='-X -i -P ?f%f:(stdin). ?lb%lb?L/%L.. [?eEOF:?pb%pb\%..]'
#export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case'

# HISTORY
HISTFIE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Z
_Z_DATA="$HOME/.z"
_Z_NO_RESOLVE_SYMLINKS=true
. /usr/local/etc/profile.d/z.sh
function _Z_precmd {
  z --add "$(pwd -P)" 61
}
precmd_functions=($precmd_functions _Z_precmd)

# Perl
export PERL_CPANM_OPT="--local-lib=$HOME/.perl-extlib"
export PERL5LIB="$HOME/.perl-extlib/lib/perl5:$PERL5LIB"

# Ruby
export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# Haskell
export PATH="$HOME/.cabal/bin:$PATH"

# color settings
source $HOME/.zsh/color.sh

# completion settings
source $HOME/.zsh/completion.sh

# keybind, alias settings
source $HOME/.zsh/mapping.sh

# tmux(Terminal Multiplexer) settings
source $HOME/.zsh/tmux.sh

# git
function git_diff() {
  git diff --no-ext-diff -w "$@" | vim -R -
}

# alias
alias mv='mv -i'

alias agit='vim -c :Agit'
