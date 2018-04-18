dotfiles
========

OSX setup bootstrap

1. Open Terminal.app & exec initialize.sh
2. Edit environmental files
3. Provisioning by Ansible



## 1. Open Terminal.app & exec initialize.sh

* Install Xcode, Homebrew, Ansible, Git
* clone dotfiles repository

Applications -> Utilities -> Terminal.app

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/girigiribauer/dotfiles/master/initialize.sh)"
```

or override $DOTFILES (default: "\$HOME/dotfiles")

```sh
sh -c "DOTFILES=/path/to/yourdir; $(curl -fsSL https://raw.githubusercontent.com/girigiribauer/dotfiles/master/initialize.sh)"
```



## 2. Edit environmental files

* dotfiles/ansible/playbooks.yml (copy from playbooks.yml.sample)
* dotfiles/ansible/group_vars/localhost (copy from localhost.sample)

`playbooks.yml` is Ansible playbook.
For more details. <http://docs.ansible.com/ansible/latest/playbooks.html>

`group_vars/localhost` is Ansible environmental variables.
For more details. <http://docs.ansible.com/ansible/latest/intro_inventory.html>



## 3. Provisioning by Ansible

```sh
ansible-playbook playbooks.yml --ask-become-pass
```
