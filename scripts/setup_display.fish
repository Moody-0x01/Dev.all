#!/bin/sh

MON=$(xrandr | grep ' connected' | awk '{printf "%s", $1}')
# RES=2048x1152
RES=1920x1080
xrandr --output $MON --mode $RES
