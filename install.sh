#!/bin/sh

path=$(cd $(dirname $0) && pwd)

function symlinks() {
  local name=$1
  if test $(readlink -f "$path/${name}") != $(readlink -f "$HOME/${name}")
  then
    echo "ln -s $path/$name $HOME/$name --backup=t"
    ln -s $path/$name $HOME/$name --backup=t
  fi
}

symlinks ".vimrc"
symlinks ".vim"
symlinks ".zshrc"
symlinks ".zsh"
symlinks ".gitignore"
symlinks ".jshintrc"
symlinks ".tmux.conf"
symlinks ".gemrc"
