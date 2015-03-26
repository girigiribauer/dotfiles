# ----------------------------------------
# keybind, alias settings
# https://jonsuh.com/blog/bash-command-line-shortcuts/
# ----------------------------------------

# browse from CLI
alias chrome="open -a Google\ Chrome"
alias firefox="open -a Firefox"
alias safari="open -a Safari"
alias finder="open -a Finder"
alias o="open ."

# ls -lah
alias ll="ls -alh"

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


# ----------------------------------------
# Git Aliases
# https://jonsuh.com/blog/git-command-line-shortcuts/
# ----------------------------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gca='git commit -a'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gss='git status -s'
alias gst='git stash'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstd='git stash drop'

# Git log find by commit message
function glf() { git log --all --grep="$1"; }
