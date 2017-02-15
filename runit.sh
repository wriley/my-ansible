#!/bin/bash

CMD="uptime"

if [ -n "$1" ]; then
    CMD="$1"
fi

ansible -i my_hosts linux --vault-password-file=~/.vault_pass -a "${CMD}"
