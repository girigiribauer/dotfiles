# ---------------------------------------------------------------------------- #
# 補完周り
# ---------------------------------------------------------------------------- #

# zsh によるタブ補完をオンにする
# http://d.hatena.ne.jp/ywatase/20071103
autoload -Uz compinit
compinit

# 'cd -' [Tab] で以前移動したディレクトリに移動する
setopt pushd_ignore_dups

# ディレクトリの補完で、末尾のスラッシュを自動的に追加する
setopt auto_param_slash

# 末尾のスラッシュを取り除かない
setopt noautoremoveslash

# 単にパスだけ入力しても、存在していれば移動する
setopt auto_cd
