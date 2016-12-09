#!/bin/bash

ansible -i my_hosts linux --vault-password-file=~/.vault_pass -a "uptime"
