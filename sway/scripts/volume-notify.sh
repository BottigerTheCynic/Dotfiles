#!/bin/bash
wpctl set-volume @DEFAULT_SINK@ "$1"
vol=$(wpctl get-volume @DEFAULT_SINK@ | awk '{print int($2*100)}')
muted=$(wpctl get-volume @DEFAULT_SINK@ | grep -c MUTED)
if [ "$muted" -eq 1 ]; then
    notify-send -h string:x-canonical-private-synchronous:volume "Volume" "Muted"
else
    notify-send -h string:x-canonical-private-synchronous:volume "Volume" "${vol}%"
fi

