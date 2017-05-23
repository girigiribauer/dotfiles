# ---------------------------------------------------------------------------- #
# $HOME/.zsh/mappings.zsh
# ---------------------------------------------------------------------------- #

alias which="which -a"

alias o="open ."

alias sed=gsed

# ls
alias ls="ls --color"
alias ll="ls -alh"
alias lll="ls -alh | lv"

# show files after change directory
function chpwd() {
  if [ 20 -gt $(ls -1 | wc -l) ]; then
    ls -lah
  else
    ls
  fi
}

# <C-X> -> D: 6digits date
function print_date() {
  zle -U `date "+%y%m%d"`
}
zle -N print_date
bindkey "^Xd" print_date

# prompt before overwrite
alias mv="mv -i"

# <C-K>: cd ..
function cdup() {
  cd ..
  echo ""
  zle reset-prompt
}
zle -N cdup
bindkey "^K" cdup

alias ...="cd ../.."
alias ....="cd ../../.."

# Git
# see: https://jonsuh.com/blog/git-command-line-shortcuts/
alias ga="git add"
alias gaa="git add ."
alias gb="git branch --all"
alias gbd="git branch -d "
alias gc="git commit"
alias gca="git commit -a"
alias gco="git checkout"
alias gcom="git checkout master"
alias gcod="git checkout develop"
alias gcob="git checkout -b"
alias gd="git diff"
alias gl="git log --graph --all --pretty=format:'%Cred%h%Creset %Cgreen(%cI) -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=rfc2822"
alias gp="git pull"
alias gs="git status"
alias gst="git stash"
alias gf="git fetch"
gz() {
  git archive --format=zip -o $2 HEAD --worktree-attributes `git diff --diff-filter=AMCR --name-only $1 HEAD --`
}
gza() {
  git archive --format=zip -o $1 master
}
glf() {
  git log --all --grep="$1";
}

# Docker
function drm() {
  if [ -n "$(docker ps -a -q -f 'status=exited' -f 'status=created')" ]; then
    docker rm $(docker ps -a -q -f 'status=exited' -f 'status=created')
  else
    echo "No exited containers."
  fi
}

# ref: http://blog.n-z.jp/blog/2013-12-24-docker-rm.html
function drmi() {
  if [ -n "$(docker images | awk '/^<none>/ { print $3 }')" ]; then
    docker rmi $(docker images | awk '/^<none>/ { print $3 }')
  else
    echo "No <none> images."
  fi
}

# ref: http://sssslide.com/speakerdeck.com/bmorearty/15-docker-tips-in-5-minutes
alias dl='docker ps -l -q'

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

alias dps="docker ps -a"
alias dim="docker images"
alias drun="docker run"
alias dcom="docker-compose"
alias dex="docker exec"
alias dpull="docker pull"
alias dnet="docker network"
