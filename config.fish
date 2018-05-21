# ---------------------------------------------------------------------------- #
# basic settings
# ---------------------------------------------------------------------------- #

# language
set -xg LANG "en_US.UTF-8"
set -xg LC_ALL "en_US.UTF-8"

# shell
set -xg SHELL "/usr/local/bin/fish"

# for XDG base directory specification
set -xg XDG_CONFIG_HOME "$HOME/.config"
set -xg XDG_CACHE_HOME "$HOME/.cache"
set -xg XDG_DATA_HOME "$HOME/.local/share"

# no message
set fish_greeting

# ls colors
set -xg LSCOLORS "gxfxbEaEBxxEhEhBaDaCaD"

# golang
set -xg GOPATH "$HOME/go"
set -x PATH $PATH "$GOPATH/bin"



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

if status --is-interactive
  set -g fish_user_abbreviations

# gui
  abbr -a o "open ."

# vim
  alias vi "nvim"
  alias vim "nvim"
  alias nvim "nvim -p"

# git
  abbr -a g "git"
  abbr -a ga "git add"
  abbr -a gaa "git add ."
  abbr -a gb "git branch --all"
  abbr -a gbd "git branch -d "
  abbr -a gc "git commit"
  abbr -a gca "git commit -a"
  abbr -a gco "git checkout"
  abbr -a gcom "git checkout master"
  abbr -a gcod "git checkout develop"
  abbr -a gcob "git checkout -b"
  abbr -a gre "git rebase -i"
  abbr -a gd "git diff"
  abbr -a gl "git log --graph --all --pretty=format:'%Cred%h%Creset %Cgreen(%cI) -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=rfc2822"
  abbr -a gp "git pull"
  abbr -a gs "git status"
  abbr -a gst "git stash"
  abbr -a gf "git fetch"

# docker
  abbr -a d "docker"
  abbr -a dc "docker container" # override original dc command
  abbr -a dls 'docker container ls'
  abbr -a di "docker image"
  abbr -a dils "docker image ls"
  abbr -a dn "docker network"
  abbr -a dnls "docker network ls"
  abbr -a dv "docker volume"
  abbr -a dvls "docker volume ls"
  abbr -a dcom "docker-compose"
  abbr -a drun "docker run"
  abbr -a dex "docker exec"
  abbr -a dpull "docker pull"
end



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
