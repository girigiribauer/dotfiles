# ---------------------------------------------------------------------------- #
# $HOME/.zsh/basic.zsh
# ---------------------------------------------------------------------------- #

# emacs keybind
bindkey -e

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export SHELL="/bin/zsh"

export PAGER="lv"
alias lv="lv -c"

# for Vim <C-S> <C-Q>
stty -ixon -ixoff

# use wildcard
unsetopt nomatch

export XDG_CONFIG_HOME="$HOME/.config"

export EDITOR="nvim -p $@"
export PATH="/usr/local/bin/vim:$PATH"

# tabopen always
alias nvim="nvim -p $@"
alias vim=nvim
alias vi=nvim

# customize <C-W>
autoload -U select-word-style
select-word-style bash



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

# rbenv
export RBENV_ROOT="${ANYENV_ROOT}/envs/rbenv"
export PATH="${RBENV_ROOT}/bin:$PATH"
export PATH="${RBENV_ROOT}/shims:$PATH"

# ndenv
export NDENV_ROOT="${ANYENV_ROOT}/envs/ndenv"
export PATH="${NDENV_ROOT}/bin:$PATH"
export PATH="${NDENV_ROOT}/shims:$PATH"

# phpenv
export PHPENV_ROOT="${ANYENV_ROOT}/envs/phpenv"
export PATH="${PHPENV_ROOT}/bin:$PATH"
export PATH="${PHPENV_ROOT}/shims:$PATH"

# goenv
export GOENV_ROOT="${ANYENV_ROOT}/envs/goenv"
export PATH="${GOENV_ROOT}/bin:$PATH"
export PATH="${GOENV_ROOT}/shims:$PATH"

export GOPATH="$HOME/go"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$PATH:$GOPATH/bin"

# pyenv
export PYENV_ROOT="${ANYENV_ROOT}/envs/pyenv"
export PATH="${PYENV_ROOT}/bin:$PATH"
export PATH="${PYENV_ROOT}/shims:$PATH"



# ---------------------------------------------------------------------------- #
# GNU Packages (binutils, coreutils, findutils)
# ---------------------------------------------------------------------------- #

# see: http://d.hatena.ne.jp/katz_24/20120126/1327586474
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

alias find=gfind
alias xargs=gxargs



# ---------------------------------------------------------------------------- #
# Ansible
# ---------------------------------------------------------------------------- #

export ANSIBLE_NOCOWS=1
