#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/mybar.log # /tmp/bottom.log
polybar mybar | tee -a /tmp/mybar.log & disown
# polybar bottom | tee -a /tmp/bottom.log & disown

echo "Bars launched..."
