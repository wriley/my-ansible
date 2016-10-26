#!/bin/bash

echo look at me
exit 0

ansible -i my_hosts linux -a "uname -r" --vault-password-file=~/.vault_pass
