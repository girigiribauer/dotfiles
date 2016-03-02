# ---------------------------------------------------------------------------- #
# zshrc entrypoint
# ---------------------------------------------------------------------------- #

shellfiles=(
'basic.zsh'
'history.zsh'
'completion.zsh'
'appearance.zsh'
'mappings.zsh'
'vms.zsh'
'tmux.zsh'
)
for shellfile in ${shellfiles[@]}; do
  source "$HOME/.zsh/$shellfile"
done

