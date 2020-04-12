# ---------------------------------------------------------------------------- #
# $HOME/.zsh/tmux.zsh
# ---------------------------------------------------------------------------- #

if ! $(tmux has-session -t works 2> /dev/null)
then
  tmux new -s works
fi

if [ -z "$TMUX" ]
then
  tmux attach -t works
fi
