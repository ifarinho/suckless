#!/bin/bash

function powermenu {
    options="Lock\nSleep\nReboot\nShutdown"
    select=$(echo -e $options | dmenu -c -l 4 -bw 2)

    if [[ $select = "Lock" ]]; then
        slock
    elif [[ $select = "Sleep" ]]; then
        systemctl suspend
    elif [[ $select = "Reboot" ]]; then
        systemctl reboot
    elif [[ $select = "Shutdown" ]]; then
        systemctl poweroff
    fi
}

powermenu
