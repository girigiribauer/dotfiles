#!/bin/bash

# install Xcode
sudo xcodebuild -license

# install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# install ansible, git
brew install ansible 2> /dev/null
brew install git 2> /dev/null

# clone dotfiles
git clone https://github.com/girigiribauer/dotfiles.git "$HOME/dotfiles"

cd "$HOME/dotfiles" || exit 1

# provisioning by ansible
ansible-playbook playbooks.yml --ask-become-pass

# restart shell (should be "end of file")
exec "$SHELL" -l
