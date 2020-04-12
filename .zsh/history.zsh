# ---------------------------------------------------------------------------- #
# $HOME/.zsh/history.zsh
# ---------------------------------------------------------------------------- #

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=100000
export SAVEHIST=100000
export HISTIGNORE=pwd:ls:ll:history

setopt share_history
setopt no_flow_control
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_no_store
setopt hist_reduce_blanks
