# ---------------------------------------------------------------------------- #
# $HOME/.zshrc (entrypoint)
# ---------------------------------------------------------------------------- #

shellfiles=(
'basic.zsh'
'history.zsh'
'completion.zsh'
'appearance.zsh'
'mappings.zsh'
'tmux.zsh'
)
for shellfile in ${shellfiles[@]}; do
  source "$HOME/.zsh/$shellfile"
done

if [ -e "$HOME/.zshrc.local" ]
then
  source "$HOME/.zshrc.local"
fi
