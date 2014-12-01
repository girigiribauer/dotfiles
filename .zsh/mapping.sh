# ----------------------------------------
# keybind, alias settings
# ----------------------------------------

# browse from CLI
alias chrome="open -a Google\ Chrome"
alias firefox="open -a Firefox"
alias safari="open -a Safari"
alias finder="open -a Finder"

# ls -lah
alias la="ls -lah"

# lessでエスケープシーケンスをちゃんと表示
alias less="less -R"

# cp (linux like)
alias cp="gcp"

# 移動したらすぐls -lah
# ただしファイルなどが20より多かった場合は
# lsで簡易表示
function chpwd() {
  if [ 20 -gt `ls -1 | wc -l` ]; then
    ls -lah
  else
    ls
  fi
}

# C-kで上移動
# 副作用として現在のカーソル位置から左側の文字削除が使えなくなる
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
zle -N cdup
bindkey '^k' cdup

# 画像サイズ
# アプリケーションの有無のチェックはここを参考にした
# http://lambdalisue.hatenablog.com/entry/2013/07/06/023040
which identify > /dev/null 2>&1
if [ $? -eq 0 ]; then
  alias wh="identify -format '%f %w x %h\n'"
fi
