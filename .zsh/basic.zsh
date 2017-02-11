# ---------------------------------------------------------------------------- #
# basic
# ---------------------------------------------------------------------------- #

# emacs keybind
bindkey -e

# LANG
export LANG="ja_JP.UTF-8"

# SHELL
export SHELL="/bin/zsh"

# PAGER
export PAGER="lv"
alias lv="lv -c"



# ---------------------------------------------------------------------------- #
# EDITOR
# ---------------------------------------------------------------------------- #

export EDITOR="vim -p $@"
export PATH="/usr/local/bin/vim:$PATH"

# tabopen always
alias vim="vim -p $@"
alias vi=vim



# ---------------------------------------------------------------------------- #
# PATH
# ---------------------------------------------------------------------------- #

export PATH="/usr/local/sbin:$PATH"

export PATH="$PATH:/usr/local/bin"
export MANPATH="/usr/local/share/man:$MANPATH"

# local application
export PATH="$HOME/bin:$PATH"

# Homebrew
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_CASK_OPTS="--appdir=/Applications"



# ---------------------------------------------------------------------------- #
# anyenv
# ---------------------------------------------------------------------------- #

# setting anyenv for multiuser
export ANYENV_ROOT=/usr/local/anyenv
export PATH="${ANYENV_ROOT}/bin:$PATH"

if [ -d ${ANYENV_ROOT} ] ; then
  eval "$(anyenv init - $SHELL)"
fi



# ---------------------------------------------------------------------------- #
# Ruby
# ---------------------------------------------------------------------------- #

# rbenv
export RBENV_ROOT="${ANYENV_ROOT}/envs/rbenv"
export PATH="${RBENV_ROOT}/bin:$PATH"
export PATH="${RBENV_ROOT}/shims:$PATH"



# ---------------------------------------------------------------------------- #
# Node
# ---------------------------------------------------------------------------- #

# ndenv
export NDENV_ROOT="${ANYENV_ROOT}/envs/ndenv"
export PATH="${NDENV_ROOT}/bin:$PATH"
export PATH="${NDENV_ROOT}/shims:$PATH"



# ---------------------------------------------------------------------------- #
# PHP
# ---------------------------------------------------------------------------- #

# phpenv
export PHPENV_ROOT="${ANYENV_ROOT}/envs/phpenv"
export PATH="${PHPENV_ROOT}/bin:$PATH"
export PATH="${PHPENV_ROOT}/shims:$PATH"



# ---------------------------------------------------------------------------- #
# Golang
# ---------------------------------------------------------------------------- #

# goenv
export GOENV_ROOT="${ANYENV_ROOT}/envs/goenv"
export PATH="${GOENV_ROOT}/bin:$PATH"
export PATH="${GOENV_ROOT}/shims:$PATH"

export GOPATH="$HOME/go"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:$GOPATH/bin"



# ---------------------------------------------------------------------------- #
# Python
# ---------------------------------------------------------------------------- #

# pyenv
export PYENV_ROOT="${ANYENV_ROOT}/envs/pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
export PATH="${PYENV_ROOT}/shims:$PATH"



# ---------------------------------------------------------------------------- #
# GNU Packages (binutils, coreutils, findutils)
# ---------------------------------------------------------------------------- #

# g 付きコマンドを g なしの symlinks にして PATH 通す
# http://d.hatena.ne.jp/katz_24/20120126/1327586474
# $(brew --prefix coreutils) は重いので先にパス展開しておく
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# symlinks が用意されていないものは自分で alias を貼る
alias find=gfind
alias xargs=gxargs



# ---------------------------------------------------------------------------- #
# Ansible
# ---------------------------------------------------------------------------- #

export ANSIBLE_NOCOWS=1
