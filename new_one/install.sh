#!/bin/bash
###################
# Install ansible #
if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common ansible git python3 -y
else
    echo "Ansible already installed"
fi
sudo apt-get install nano -y

#####################################
# Display real installation process #
echo ""
echo "Customize the playbook playbook.yml to suit your needs, then run ansible with :"
echo "  ansible-playbook playbook.yml --ask-become-pass"
echo ""
