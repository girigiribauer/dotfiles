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

# for gcloud
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]
then
  source "$HOME/google-cloud-sdk/path.zsh.inc"
fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]
then
  source "$HOME/google-cloud-sdk/completion.zsh.inc"
fi
export PATH="$HOME/.local/bin/luna-studio:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/y/.sdkman"
[[ -s "/Users/y/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/y/.sdkman/bin/sdkman-init.sh"
