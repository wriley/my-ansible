#!/bin/bash

ansible-playbook -bK -i my_hosts apt-upgrade.yml  --vault-password-file=~/.vault_pass $@
