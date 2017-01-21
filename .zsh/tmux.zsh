# ---------------------------------------------------------------------------- #
# tmux に関する設定
# ---------------------------------------------------------------------------- #

# 初期に用意されているセッション
# "prefix -> (" or "prefix -> )" でセッション切り替え
TMUX_INITIAL_SESSIONS=(
"config"
"works"
"personal"
)

# 初期セッションが存在していなかったらバックグラウンドで作る
for tmux_session in ${TMUX_INITIAL_SESSIONS[@]}
do
  if ! $(tmux has-session -t ${tmux_session} 2> /dev/null)
  then
    tmux new-session -d -s ${tmux_session}
  fi
done

# tmux が起動中でなければ attach する
if [ -z "$TMUX" ]
then
  tmux attach-session -t "${TMUX_INITIAL_SESSIONS[0]}"
else
fi
