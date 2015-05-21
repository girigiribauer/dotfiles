#!/bin/sh

path=$(cd $(dirname $0) && pwd)


function symlinks() {
  local name=$1
  if [ -e "$HOME/$name" ]
  then
    echo "mv $HOME/$name $HOME/${name}_backup --backup=t"
    mv $HOME/$name $HOME/${name}_backup --backup=t
  fi
  echo "ln -s $path/$name $HOME/$name"
  ln -s $path/$name $HOME/$name
}

symlinks ".vimrc"
symlinks ".vim"
symlinks ".zshrc"
symlinks ".zsh"
symlinks ".gitignore"
symlinks ".jshintrc"
symlinks ".tmux.conf"
symlinks ".gemrc"
