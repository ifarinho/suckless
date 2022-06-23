#!/bin/sh

bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | dmenu -p "select wifi:" -l 20 | cut -d' ' -f1)
pass=$(echo "" | dmenu -p "enter password:")
nmcli device wifi connect $bssid password $pass
