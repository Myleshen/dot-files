#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch monitor-1 and monitor-2 on main and left montiors
polybar --reload monitor-1 &
polybar --reload monitor-2 &

echo "Bars launched..."
