# ---------------------------------------------------------------------------- #
# basic settings
# ---------------------------------------------------------------------------- #

# language
set -xg LANG "en_US.UTF-8"
set -xg LC_ALL "en_US.UTF-8"

# shell
#set -xg SHELL "/usr/local/bin/fish"

# for XDG base directory specification
set -xg XDG_CONFIG_HOME "$HOME/.config"
set -xg XDG_CACHE_HOME "$HOME/.cache"
set -xg XDG_DATA_HOME "$HOME/.local/share"

# no message
set fish_greeting



# ---------------------------------------------------------------------------- #
# local settings
# ---------------------------------------------------------------------------- #

if test -f "$HOME/.config/fish/private.fish"
  source "$HOME/.config/fish/private.fish"
end



# ---------------------------------------------------------------------------- #
# vi settings
# ---------------------------------------------------------------------------- #

function fish_user_key_bindings
  fish_default_key_bindings -M insert
  fish_vi_key_bindings insert
end



# ---------------------------------------------------------------------------- #
# mapping settings
# ---------------------------------------------------------------------------- #

# gui
alias o "open ."

# vim
alias vi "nvim"
alias vim "nvim"
alias nvim "nvim -p"

# git
alias g "git"
alias ga "git add"
alias gaa "git add ."
alias gb "git branch --all"
alias gbd "git branch -d "
alias gc "git commit"
alias gca "git commit -a"
alias gco "git checkout"
alias gcom "git checkout master"
alias gcod "git checkout develop"
alias gcob "git checkout -b"
alias gre "git rebase -i"
alias gd "git diff"
alias gl "git log --graph --all --pretty=format:'%Cred%h%Creset %Cgreen(%cI) -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=rfc2822"
alias gp "git pull"
alias gs "git status"
alias gst "git stash"
alias gf "git fetch"

# docker
alias d "docker"
alias dc "docker container" # override original dc command
alias dls 'docker container ls'
alias di "docker image"
alias dils "docker image ls"
alias dn "docker network"
alias dnls "docker network ls"
alias dv "docker volume"
alias dvls "docker volume ls"
alias dcom "docker-compose"
alias drun "docker run"
alias dex "docker exec"
alias dpull "docker pull"



# ---------------------------------------------------------------------------- #
# tmux settings
# ---------------------------------------------------------------------------- #

if test -z "$TMUX"
  if tmux has-session -t "works" 2> /dev/null
    tmux attach-session -t "works"
  else
    tmux new-session -d -s "works"
  end
end
