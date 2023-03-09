#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polyba

echo "---" | tee -a /tmp/base.log /tmp/polybar2.log
#polybar -r base 2>&1 | tee -a /tmp/base.log & disown
polybar -r example 2>&1 | tee -a /tmp/polybar2.log & disown


