#!/bin/bash

# Install Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

# Setup k3s
ansible-playbook provisioning-files/ansible/playbooks/install-k3s.yml
# Install helm, prometheus, grafana
ansible-playbook provisioning-files/ansible/playbooks/install-prometheus-grafana.yml
# Create NodePort services
ansible-playbook provisioning-files/ansible/playbooks/setup-nodeports.yml
# Create Secrets
ansible-playbook provisioning-files/ansible/playbooks/setup-secrets.yml

# Install stress test tool
sudo apt update
sudo apt install stress
