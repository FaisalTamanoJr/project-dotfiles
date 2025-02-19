#!/bin/sh

# Run programs at startup
run() {
    if ! pgrep -f "$1"; then
        "$@" &
    fi
}

run "nm-applet" &
run "cbatticon" -n &
run "feh" --bg-fill ~/Pictures/wallpaper.jpg &
run "picom" -b &
run "dunst" &
run "volumeicon" &