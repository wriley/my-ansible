#!/bin/bash

BECOME="-bK"

case "$1" in
    start)
        CMD="/etc/init.d/boinc-client start"
        ;;
    stop)
        CMD="/etc/init.d/boinc-client stop"
        ;;
    status)
        CMD="pgrep -c boinc"
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

ansible -i my_hosts seti ${BECOME} --vault-password-file=~/.vault_pass -a "${CMD}" ${@:2}
