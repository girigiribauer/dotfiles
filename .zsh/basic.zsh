# ---------------------------------------------------------------------------- #
# 基本的な設定
# ---------------------------------------------------------------------------- #

# emacs keybind
bindkey -e

# LANG
export LANG="ja_JP.UTF-8"

# SHELL
export SHELL="/bin/zsh"

# PAGER
export PAGER="lv -c"

# EDITOR
export EDITOR="/usr/local/bin/vim -v -p"
export PATH="/usr/local/bin/vim:$PATH"

# Mac Sierra で Vim 上でヤンクしたものがクリップボードに入らない対処
alias vim='reattach-to-user-namespace vim $@'
alias vi=vim



# ---------------------------------------------------------------------------- #
# PATH
# ---------------------------------------------------------------------------- #

# Homebrew と coreutils を使う
# http://ja.wikipedia.org/wiki/Coreutils
export PATH="/usr/local/Cellar:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/local/bin"

# MANPATH
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Homebrew cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


# ---------------------------------------------------------------------------- #
# Node
# ---------------------------------------------------------------------------- #

export PATH="$PATH:$HOME/.npm"
export PATH="$PATH:/usr/local/share/npm/bin"



# ---------------------------------------------------------------------------- #
# Perl
# ---------------------------------------------------------------------------- #

export PERL_CPANM_OPT="--local-lib=$HOME/.perl-extlib"
export PERL5LIB="$HOME/.perl-extlib/lib/perl5:$PERL5LIB"



# ---------------------------------------------------------------------------- #
# Ruby
# ---------------------------------------------------------------------------- #

export PATH="$HOME/.rbenv/shims:$PATH"



# ---------------------------------------------------------------------------- #
# PHP
# ---------------------------------------------------------------------------- #

export PATH="$PATH:/usr/local/Cellar/php56/5.6.6/bin"



# ---------------------------------------------------------------------------- #
# Golang
# ---------------------------------------------------------------------------- #

export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin



# ---------------------------------------------------------------------------- #
# Haskell
# ---------------------------------------------------------------------------- #

# パッケージ管理ツールへのパスを追加
export PATH="$PATH:$HOME/.cabal/bin"



# ---------------------------------------------------------------------------- #
# Ansible
# ---------------------------------------------------------------------------- #

export ANSIBLE_NOCOWS=1
