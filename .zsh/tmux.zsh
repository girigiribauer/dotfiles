# ---------------------------------------------------------------------------- #
# $HOME/.zsh/tmux.zsh
# ---------------------------------------------------------------------------- #

TMUX_INITIAL_SESSIONS=(
"config"
"works"
"personal"
)

for tmux_session in ${TMUX_INITIAL_SESSIONS[@]}
do
  if ! $(tmux has-session -t ${tmux_session} 2> /dev/null)
  then
    tmux new-session -d -s ${tmux_session}
  fi
done

if [ -z "$TMUX" ]
then
  tmux attach-session -t "${TMUX_INITIAL_SESSIONS[0]}"
else
fi
