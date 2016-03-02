# ---------------------------------------------------------------------------- #
# キーマッピング
# もろもろ参考
# https://jonsuh.com/blog/bash-command-line-shortcuts/
# ---------------------------------------------------------------------------- #

# which はパスが通っているものを全部出す
alias which="which -a"

# browse from CLI
alias o="open ."

# C-w の区切り単位をパス単位に変更
# http://stackoverflow.com/questions/444951/zsh-stop-backward-kill-word-on-directory-delimiter
autoload -U select-word-style
select-word-style bash

# 画像サイズ
# アプリケーションの有無のチェックはここを参考にした
# http://lambdalisue.hatenablog.com/entry/2013/07/06/023040
which identify > /dev/null 2>&1
if [ $? -eq 0 ]; then
  alias size="identify -format '%f %w x %h\n'"
fi

function notification() {
  echo "display notification \"$1\"" | osascript;
}



# ---------------------------------------------------------------------------- #
# 表示に関するマッピング
# ---------------------------------------------------------------------------- #

# ls
alias ls="ls --color"
alias ll="ls -alh"
alias lll="ls -alh | less"
alias ldir="ls -al | grep ^d"

# lessでエスケープシーケンスをちゃんと表示
alias less="less -R"

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



# ---------------------------------------------------------------------------- #
# 移動に関するマッピング
# ---------------------------------------------------------------------------- #

# ファイル移動の結果上書きしてしまうケースは警告出す
alias mv="mv -i"

# C-kで上移動
# 副作用として現在のカーソル位置から左側の文字削除が使えなくなる
function cdup() {
  echo
  cd ..
  zle reset-prompt
}
zle -N cdup
bindkey "^K" cdup

# 上位階層への移動
alias ...="cd ../.."
alias ....="cd ../../.."



# ---------------------------------------------------------------------------- #
# Git に関するマッピング
# https://jonsuh.com/blog/git-command-line-shortcuts/
# ---------------------------------------------------------------------------- #

alias ga="git add"
alias gaa="git add ."
alias gaaa="git add -A"
alias gb="git branch --all"
alias gbd="git branch -d "
alias gc="git commit"
alias gca="git commit -a"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gd="git diff"
alias gda="git diff HEAD"
alias gi="git init"
# ref: http://blog.toshimaru.net/git-log-graph/
alias gl="git log --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gm="git merge --no-ff"
alias gp="git pull"
alias gs="git status"
alias gss="git status -s"
alias gst="git stash"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gstd="git stash drop"

# Git log find by commit message
function glf() {
  git log --all --grep="$1";
}

# git config local
function gituser() {
  git config user.name "girigiribauer"
  git config user.email "girigiribauer@gmail.com"
}

alias tig="tig --all"



# ---------------------------------------------------------------------------- #
# dnsmasq に関するマッピング
# http://linux.just4fun.biz/Linux%E7%92%B0%E5%A2%83%E8%A8%AD%E5%AE%9A/dnsmasq%E3%82%92DHCP%E3%82%B5%E3%83%BC%E3%83%90%E3%81%A8%E3%81%97%E3%81%A6%E4%BD%BF%E3%81%86%E5%A0%B4%E5%90%88%E3%81%AE%E6%9C%80%E5%B0%8F%E9%99%90%E3%81%AE%E8%A8%AD%E5%AE%9A%E4%BE%8B.html
# ---------------------------------------------------------------------------- #

alias dnsstop "sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist"
alias dnsstart "sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist"



