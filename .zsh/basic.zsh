# ---------------------------------------------------------------------------- #
# $HOME/.zsh/basic.zsh
# ---------------------------------------------------------------------------- #

# Golang
export GOPATH="$HOME/go"
export GOROOT="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE="on"

my_globalias() {
   zle _expand_alias
   zle expand-word
   zle accept-line
}
zle -N my_globalias

bindkey -M emacs "^m" my_globalias
bindkey -M viins "^m" my_globalias

alias make="nocorrect make"

# for oh-my-zsh vi-mode
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
export MODE_INDICATOR="%F{yellow}[NORMAL]%f"
export INSERT_MODE_INDICATOR="%F{red}[INSERT]%f"
