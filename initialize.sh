#!/bin/sh

# ---------------------------------------------------------------------------- #
# dotfiles initialize.sh
#
# 1. install Xcode CommandLineTools
# 2. install Homebrew
# 3. install Ansible (from Homebrew)
# 4. install Git (from Homebrew)
# 5. clone dotfiles repository
# ---------------------------------------------------------------------------- #

dotfilesdir=${DOTFILES:-"$HOME"/dotfiles}

heading()
{
  echo "# ---------------------------------------------------------------------------- #"
  echo "# $1"
  echo "# ---------------------------------------------------------------------------- #"
}

skip()
{
  printf "%s\n\n" "$1"
  sleep 0.3
}



# Main script

heading "1. install Xcode CommandLineTools"

check_clt=$(xcode-select -p 2>&1 >/dev/null)

if [ "$check_clt" ]
then
  printf "%s" "Wait for installing? [y/n]"
  read -r choice
  case $choice in
    [Yy]* )
      xcode-select --install
      while [ "$check_clt" ]
      do
        sleep 5;
        echo "installing..."
        check_clt=$(xcode-select -p 2>&1 >/dev/null)
      done
      echo "installed!"
      ;;
    [Nn]* )
      skip "skip install..."
      ;;
    * ) echo "Please answer [YyNn].";;
  esac
else
  skip "skip install..."
fi



heading "2. install Homebrew"

if [ -z "$(which brew)" ]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
else
  skip "skip install..."
fi



heading "3. install Ansible (from Homebrew)"

if [ -z "$(which ansible)" ]
then
  brew install ansible 2> /dev/null
else
  skip "skip install..."
fi



heading "4. install Git (from Homebrew)"

if [ -z "$(which git)" ]
then
  brew install ansible 2> /dev/null
else
  skip "skip install..."
fi



heading "5. clone dotfiles repository"

if [ ! -d "$dotfilesdir" ]
then
  git clone git@github.com:girigiribauer/dotfiles.git "$dotfilesdir"
else
  skip "already exist dotfiles directory..."
fi
