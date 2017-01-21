# ---------------------------------------------------------------------------- #
# 履歴管理
# ---------------------------------------------------------------------------- #

# 履歴用ファイル
HISTFILE="$HOME/.zsh_history"

# メモリ上の履歴サイズ
HISTSIZE=100000

# ファイル上の履歴サイズ
SAVEHIST=100000

# 履歴をインクリメンタルサーチする際の除外コマンド
HISTIGNORE=pwd:ls:history

# 同一ホストでの履歴の共有
setopt share_history

# フロー制御オフに（前方履歴検索を有効に）
setopt no_flow_control

# 履歴の重複分を除外する
setopt hist_save_no_dups
setopt hist_ignore_all_dups

# history コマンド自体は履歴から除外
setopt hist_no_store

# 余分なブランクを削除して詰める
setopt hist_reduce_blanks
