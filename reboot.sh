#!/bin/bash

ansible-playbook -i my_hosts -bK reboot.yml --vault-password-file=~/.vault_pass $@
