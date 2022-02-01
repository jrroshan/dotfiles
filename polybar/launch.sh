#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar main
killall -q polybar left
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar left 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."

#!/bin/sh

# Terminate already running bar instances
# killall -q polybar

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
# MONITORS=$(xrandr --query | grep " connected" | cut -d" " -f1)

# MONITORS=$MONITORS polybar main;
# MONITORS=$MONITORS polybar left;

echo "Bars launched..."
