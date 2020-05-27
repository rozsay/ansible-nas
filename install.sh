#!/bin/bash

###################
# Install ansible #
if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common ansible git python-apt -y
else
    echo "Ansible already installed"
fi
sudo apt-get install software-properties-common ansible git python-apt -y

#####################################
# Display real installation process #
echo ""
echo "Customize the playbook ansible-desktop.yml to suit your needs, then run ansible with :"
echo "  ansible-playbook ansible-desktop.yml --ask-become-pass"
echo ""
