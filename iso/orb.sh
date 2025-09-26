#!/bin/sh
# Aura Orb Menu
yad --width=400 --height=400 \
    --title="Aura Orb" \
    --list --column="App" --column="Command" \
    "Terminal" "xterm" \
    "Files" "pcmanfm" \
    "Browser" "firefox" \
    "Settings" "lxappearance"
