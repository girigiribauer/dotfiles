# ---------------------------------------------------------------------------- #
# 履歴管理
# ---------------------------------------------------------------------------- #

# 履歴用ファイル
HISTFILE="$HOME/.zsh_history"

# メモリ上の履歴サイズ
HISTSIZE=100000

# ファイル上の履歴サイズ
SAVEHIST=100000

# 同一ホストでの履歴の共有
setopt share_history

# フロー制御オフに（前方履歴検索を有効に）
setopt no_flow_control

