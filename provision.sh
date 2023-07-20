#!/bin/bash

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

# Setup k3s
ansible-playbook provisioning-files/ansible/playbooks/install-k3s.yml
# Install helm and prometheus
ansible-playbook provisioning-files/ansible/playbooks/install-helm.yml