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



# ---------------------------------------------------------------------------- #
# Git
# ---------------------------------------------------------------------------- #

# ref: https://jonsuh.com/blog/git-command-line-shortcuts/
alias g="git"
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
alias gre="git rebase -i"
alias gd="git diff"
alias gl="git log --graph --all --pretty=format:'%Cred%h%Creset %Cgreen(%cI) -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=rfc2822"
alias gp="git pull"
alias gs="git status"
alias gst="git stash"
alias gf="git fetch"



# ---------------------------------------------------------------------------- #
# Docker
# ---------------------------------------------------------------------------- #

alias d="docker"
alias dc="docker container" # override original dc command
alias dls='docker container ls'
alias di="docker image"
alias dn="docker network"
alias dv="docker volume"
alias dcom="docker-compose"

alias drun="docker run"
alias dex="docker exec"
alias dpull="docker pull"

# ref: https://unicorn.limited/jp/item/347
function din() {
  if [ -n "$1" ]; then
    cid=$1
  else
    cid=$(docker container ls -l -q)
  fi
  echo $cid
  docker exec -it $cid /bin/sh
}
