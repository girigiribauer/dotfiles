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

# node
set -xg PATH "$HOME/.nodebrew/current/bin" $PATH



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
  abbr --add --global o "open ."

  # vim
  abbr --add --global vi "nvim -p"
  abbr --add --global vim "nvim -p"
  abbr --add --global nvim "nvim -p"

  # git
  abbr --add --global g "git"
  abbr --add --global ga "git add"
  abbr --add --global gaa "git add ."
  abbr --add --global gb "git branch --all"
  abbr --add --global gbd "git branch -d "
  abbr --add --global gc "git commit"
  abbr --add --global gca "git commit -a"
  abbr --add --global gco "git checkout"
  abbr --add --global gcom "git checkout master"
  abbr --add --global gcod "git checkout develop"
  abbr --add --global gcob "git checkout -b"
  abbr --add --global gre "git rebase -i"
  abbr --add --global gd "git diff"
  abbr --add --global gl "git log --graph --all --pretty=format:'%Cred%h%Creset %Cgreen(%cI) -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=rfc2822"
  abbr --add --global gp "git pull"
  abbr --add --global gs "git status"
  abbr --add --global gst "git stash"
  abbr --add --global gf "git fetch"

  # docker
  abbr --add --global d "docker"
  abbr --add --global dc "docker container" # override original dc command
  abbr --add --global dls 'docker container ls'
  abbr --add --global di "docker image"
  abbr --add --global dils "docker image ls"
  abbr --add --global dn "docker network"
  abbr --add --global dnls "docker network ls"
  abbr --add --global dv "docker volume"
  abbr --add --global dvls "docker volume ls"
  abbr --add --global dcom "docker-compose"
  abbr --add --global drun "docker run"
  abbr --add --global dex "docker exec"
  abbr --add --global dpull "docker pull"

end



# ---------------------------------------------------------------------------- #
# tmux settings
# ---------------------------------------------------------------------------- #

if test -z "$TMUX"
  tmux new-session -A -s "works"
end
