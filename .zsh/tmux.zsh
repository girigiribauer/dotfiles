# ---------------------------------------------------------------------------- #
# tmux（画面分割）
# ---------------------------------------------------------------------------- #

# ターミナル起動時に自動で tmux も起動する
# https://gist.github.com/yonchu/3935972#file-tmux_auto_running-sh
if [ -z "$TMUX" -a -z "$STY" ]
then
  if type tmuxx >/dev/null 2>&1
  then
    tmuxx
  elif type tmux >/dev/null 2>&1
  then
    if tmux has-session && tmux list-sessions | egrep -q ".*]$"
    then
      # デタッチ済みセッションが存在する
      tmux attach && echo "tmux attached session "
    else
      tmux new-session && echo "tmux created new session"
    fi
  elif type screen >/dev/null 2>&1
  then
    screen -rx || screen -D -RR
  fi
fi

# tmuxinator
if [ -e ~/.tmuxinator/tmuxinator.zsh ]; then
  source ~/.tmuxinator/tmuxinator.zsh
fi

