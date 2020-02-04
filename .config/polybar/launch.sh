#!/usr/bin/env sh

POLYBAR_CONFIG=$HOME/.config/polybar/config.ini

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar -c $POLYBAR_CONFIG top >>/tmp/polybar1.log 2>&1 &
polybar -c $POLYBAR_CONFIG bottom >>/tmp/polybar2.log 2>&1 &


