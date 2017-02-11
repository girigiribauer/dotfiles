# ---------------------------------------------------------------------------- #
# zshrc entrypoint
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

# 個人設定ファイルがあれば読み込み
if [ -e "$HOME/.zshrc.profiles" ]
then
  source "$HOME/.zshrc.profiles"
fi
