#!/bin/bash

CHOISES="Poweroff\nReboot"
CHOSEN=$(echo -e $CHOISES | dmenu -i -p "DO YOU WANT TO")

case "$CHOSEN" in
    Poweroff) systemctl poweroff;;
    Reboot) systemctl reboot;;
esac
