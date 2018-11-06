#!/bin/bash

BECOME="-bK --become-user=arma3server"

case "$1" in
    start)
        CMD="~/arma3server start"
        ;;
    stop)
        CMD="~/arma3server stop"
        ;;
    status)
        CMD="pgrep -c arma3server"
        BECOME=""
        ;;
    temp)
        CMD="cat /sys/class/thermal/thermal_zone0/temp"
        BECOME=""
        ;;
    *)
        echo use start, stop, or status
        exit 1
        ;;
esac

ansible -i my_hosts arma3 ${BECOME} --vault-password-file=~/.vault_pass -a "${CMD}" ${@:2}
