#!/bin/bash

ansible-playbook -i inventory playbooks/installsystempackages.yml
ansible-playbook -i inventory playbooks/installdocker.yml
ansible-playbook -i inventory playbooks/deployauth.yml
ansible-playbook -i inventory playbooks/deployconfig.yml
ansible-playbook -i inventory playbooks/deploywallet.yml