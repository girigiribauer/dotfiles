#!/bin/bash

# shellscript index
#
# 1. install Xcode CommandLineTools (choice 'Install')
# 2. install Homebrew
# 3. install Ansible, using Homebrew
# 4. clone dotfiles, using Git
# 5. edit Ansible env file
# 6. start Ansible

dotfiles_url="https://github.com/girigiribauer/dotfiles.git"

dotfiles_dir="$HOME/dotfiles"
ansible_dir="${dotfiles_dir}/ansible"

ansible_env_sample_path="${ansible_dir}/group_vars/localhost.sample"
ansible_env_path="${ansible_dir}/group_vars/localhost"



echo "# ---------------------------------------------------------------------------- #"
echo "# 1. install Xcode CommandLineTools (choice 'Install')"
echo "# ---------------------------------------------------------------------------- #"

if [ ! -d "/Library/Developer/CommandLineTools" ]
then
  xcode-select --install
else
  echo "skip install..."
  sleep 0.1
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 2. install Homebrew"
echo "# ---------------------------------------------------------------------------- #"

if [ "$(which brew > /dev/null 2>&1)" ]
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew doctor
else
  echo "skip install..."
  sleep 0.1
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 3. install Ansible, using Homebrew"
echo "# ---------------------------------------------------------------------------- #"

if [ "$(which ansible > /dev/null 2>&1)" ]
then
  brew install ansible 2> /dev/null
else
  echo "skip install..."
  sleep 0.1
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 4. clone dotfiles, using Git"
echo "# ---------------------------------------------------------------------------- #"

if [ ! -d "${dotfiles_dir}" ]
then
  brew install git 2> /dev/null
  git clone "${dotfiles_url}" "${dotfiles_dir}"
else
  echo "skip git clone..."
  sleep 0.1
fi
echo ""



echo "# ---------------------------------------------------------------------------- #"
echo "# 5. edit Ansible env file"
echo "# ---------------------------------------------------------------------------- #"

(
cd "${ansible_dir}" || exit 1

if [ ! -f "${ansible_env_path}" ]
then
  echo "Ansible env file '${ansible_env_path}' does not exist"
  echo "copying from '${ansible_env_sample_path}'"
  cp "${ansible_env_sample_path}" "${ansible_env_path}"
fi

if diff -q "${ansible_env_sample_path}" "${ansible_env_path}" >/dev/null
then
  echo "You need edit Ansible env file '${ansible_env_path}'"
  echo "and execute shellscript again."
  exit 1
else
  echo "Ansible env file '${ansible_env_path}' exists"
fi
echo ""
) # back to working dir



echo "# ---------------------------------------------------------------------------- #"
echo "# 6. start Ansible"
echo "# ---------------------------------------------------------------------------- #"

(
cd "${ansible_dir}" || exit 1

ansible-playbook playbooks.yml --ask-become-pass
echo ""
) # back to working dir



exec "$SHELL" -l # should be 'end of file'
