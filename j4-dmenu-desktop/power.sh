#!/bin/bash

selected=$(printf "Log out\nShutdown\nRestart\nSleep\nLock" | j4-dmenu-desktop --dmenu "dmenu -fn 'Mx437 IBM VGA 8x16-12' -nb '#000000' -nf '#dcd6d6' -sb '#282828' -sf '#dcd6d6'")

case "$selected" in
  "Shutdown")
    poweroff
    ;;
  "Restart")
    reboot
    ;;
  "Sleep")
    loginctl suspend
    ;;
  "Lock")
    swaylock
    ;;
  "Log out")
    exit 0
    ;;
esac
