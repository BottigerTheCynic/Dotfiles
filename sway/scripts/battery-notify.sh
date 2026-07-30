#!/bin/bash
LOW=100
CRITICAL=10
notified_low=0
notified_critical=0

while true; do
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    status=$(cat /sys/class/power_supply/BAT0/status)

    if [ "$status" = "Discharging" ]; then
        if [ "$capacity" -le "$CRITICAL" ] && [ "$notified_critical" -eq 0 ]; then
            notify-send -u critical "Battery Critical" "${capacity}% remaining"
            notified_critical=1
        elif [ "$capacity" -le "$LOW" ] && [ "$capacity" -gt "$CRITICAL" ] && [ "$notified_low" -eq 0 ]; then
            notify-send -u normal "Battery Low" "${capacity}% remaining"
            notified_low=1
        fi
    else
        notified_low=0
        notified_critical=0
    fi
    sleep 60
done

