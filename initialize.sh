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



echo "# ---------------------------------------------------------------------------- #"
echo "# 1. install Xcode CommandLineTools"
echo "# ---------------------------------------------------------------------------- #"

if [ ! -d "/Library/Developer/CommandLineTools" ]
then
  xcode-select --install
else
  echo "skip install..."
  sleep 0.3
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 2. install Homebrew"
echo "# ---------------------------------------------------------------------------- #"

if [ "$(which brew > /dev/null 2>&1)" ]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
else
  echo "skip install..."
  sleep 0.3
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 3. install Ansible (from Homebrew)"
echo "# ---------------------------------------------------------------------------- #"

if [ "$(command -v ansible > /dev/null 2>&1)" ]
then
  brew install ansible 2> /dev/null
else
  echo "skip install..."
  sleep 0.3
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 4. install Git (from Homebrew)"
echo "# ---------------------------------------------------------------------------- #"

if [ "$(command -v git > /dev/null 2>&1)" ]
then
  brew install ansible 2> /dev/null
else
  echo "skip install..."
  sleep 0.3
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 5. clone dotfiles repository"
echo "# ---------------------------------------------------------------------------- #"

if [ ! -d "dotfiles" ]
then
  git clone https://github.com/girigiribauer/dotfiles.git
else
  echo "already exist dotfiles directory."
  sleep 0.3
fi
