# ---------------------------------------------------------------------------- #
# $HOME/.zsh/basic.zsh
# ---------------------------------------------------------------------------- #

# Golang
export GOPATH="$HOME/go"
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
