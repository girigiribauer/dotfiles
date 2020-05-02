# ---------------------------------------------------------------------------- #
# $HOME/.zsh/history.zsh
# ---------------------------------------------------------------------------- #

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000
HISTIGNORE=pwd:ls:ll:history

setopt share_history
setopt no_flow_control
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_no_store
setopt hist_reduce_blanks
