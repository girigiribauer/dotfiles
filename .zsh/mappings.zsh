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

# Mac 版の sed が二度と使われないよう封印
alias sed=gsed

# Mac Sierra で Vim 上でヤンクしたものがクリップボードに入らない対処
alias vi='reattach-to-user-namespace mvim -v -p'
alias vim='reattach-to-user-namespace mvim -v -p'



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

alias tig="tig --all"



# ---------------------------------------------------------------------------- #
# Docker に関するマッピング
# ---------------------------------------------------------------------------- #

# 停止済みのコンテナのみ削除
function drm() {
  if [ -n "$(docker ps -a -q -f 'status=exited' -f 'status=created')" ]; then
    docker rm $(docker ps -a -q -f 'status=exited' -f 'status=created')
  else
    echo "No exited containers."
  fi
}

# 名前のついてないイメージ削除
# ref: http://blog.n-z.jp/blog/2013-12-24-docker-rm.html
function drmi() {
  if [ -n "$(docker images | awk '/^<none>/ { print $3 }')" ]; then
    docker rmi $(docker images | awk '/^<none>/ { print $3 }')
  else
    echo "No <none> images."
  fi
}

# 直近に利用したコンテナのID
# ref: http://sssslide.com/speakerdeck.com/bmorearty/15-docker-tips-in-5-minutes
alias dl='docker ps -l -q'

# 引数があればそのコンテナに、無ければ直近のコンテナに接続
# ref: https://unicorn.limited/jp/item/347
function dlogin() {
  if [ -n "$1" ]; then
    cid=$1
  else
    cid=`dl`
  fi
  echo $cid
  docker exec -it $cid /bin/sh
}

# その他エイリアス
alias dps="docker ps -a"
alias dim="docker images"
alias drun="docker run"
alias dcom="docker-compose"
alias dex="docker exec"
#alias dstart="docker-machine start default && denv && echo 'set docker env'"
#alias dstop="docker-machine stop default"
alias dpull="docker pull"
alias dnet="docker network"
