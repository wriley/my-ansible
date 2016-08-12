#!/bin/bash

ansible-playbook -i my_hosts -bK site.yml --vault-password-file=~/.vault_pass $@
