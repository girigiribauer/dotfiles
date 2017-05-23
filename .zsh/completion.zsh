# ---------------------------------------------------------------------------- #
# $HOME/.zsh/completion.zsh
# ---------------------------------------------------------------------------- #

# see: https://stackoverflow.com/questions/12570749/zsh-completion-difference
autoload -Uz compinit && compinit

setopt pushd_ignore_dups

setopt auto_param_slash

setopt noautoremoveslash

setopt auto_cd
