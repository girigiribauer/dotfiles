#!/bin/bash

# shellscript index
#
# 1. install Xcode CommandLineTools (choice "Install")
# 2. install Homebrew
# 3. install Ansible, using Homebrew
# 4. clone dotfiles, using Git
# 5. edit Ansible setting files
# 6. start Ansible

dotfiles_dir="$HOME/dotfiles"
ansible_dir="${dotfiles_dir}/ansible"
dotfiles_url="https://github.com/girigiribauer/dotfiles.git"
ansible_setting_sample_path="$HOME/dotfiles/ansible/group_vars/localhost.sample"
ansible_setting_path="$HOME/dotfiles/ansible/group_vars/localhost"



# 1. install Xcode CommandLineTools (choice "Install")
if [ ! -d "/Library/Developer/CommandLineTools" ]
then
  xcode-select --install
fi

# 2. install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

# 3. install Ansible, using Homebrew
brew install ansible 2> /dev/null

# 4. clone dotfiles, using Git
brew install git 2> /dev/null
git clone "${dotfiles_url}" "${dotfiles_dir}"
cd "${dotfiles_dir}" || exit 1

# 5. edit Ansible setting files
if [ ! -f "${ansible_setting_path}" ]
then
  cp "${ansible_setting_sample_path}" "${ansible_setting_path}"
  echo "not exist ${ansible_setting_path}, copy from ${ansible_setting_sample_path}"
fi
if diff -q "${ansible_setting_sample_path}" "${ansible_setting_path}" >/dev/null
then
  echo "You need edit ${ansible_setting_path}, and execute shellscript again." 1>&2
  exit 1
fi

# 6. start Ansible
cd "${ansible_dir}" || exit 1
ansible-playbook playbooks.yml --ask-become-pass

# restart shell (should be "end of file")
exec "$SHELL" -l
