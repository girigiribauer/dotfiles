#!/bin/bash

# ---------------------------------------------------------------------------- #
# dotfiles initialize.sh
#
# 1. install Xcode CommandLineTools
# 2. install Homebrew
# 3. install Ansible (from Homebrew)
# 4. install Git (from Homebrew)
# 5. clone dotfiles repository
# ---------------------------------------------------------------------------- #

dotfilesdir="$HOME"/dotfiles

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

usage()
{
  cat <<EOF
Usage: sh initialize.sh [OPTION]

Available values for OPTION include:
  -d [directory]  dotfiles directory (default: "\$HOME/dotfiles")
  -h              show help
EOF

  exit 0
}

# Main script

while getopts d:h OPT
do
  case $OPT in
    d)  dotfilesdir="$OPTARG"
      ;;
    h)  usage
      ;;
  esac
done

heading "1. install Xcode CommandLineTools"
if [ ! -d "/Library/Developer/CommandLineTools" ]
then
  xcode-select --install
else
  skip "skip install..."
fi

heading "2. install Homebrew"
if [ "$(which brew > /dev/null 2>&1)" ]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
else
  skip "skip install..."
fi

heading "3. install Ansible (from Homebrew)"
if [ "$(command -v ansible > /dev/null 2>&1)" ]
then
  brew install ansible 2> /dev/null
else
  skip "skip install..."
fi

heading "4. install Git (from Homebrew)"
if [ "$(command -v git > /dev/null 2>&1)" ]
then
  brew install ansible 2> /dev/null
else
  skip "skip install..."
fi

heading "5. clone dotfiles repository"
if [ ! -d "$dotfilesdir" ]
then
  git clone https://github.com/girigiribauer/dotfiles.git "$dotfilesdir"
else
  skip "already exist dotfiles directory..."
fi
