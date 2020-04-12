# ---------------------------------------------------------------------------- #
# $HOME/.zsh/basic.zsh
# ---------------------------------------------------------------------------- #

# Golang
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE="on"

# for private settings
if [ -e "$HOME/.zshrc.local" ]
then
  source "$HOME/.zshrc.local"
fi
