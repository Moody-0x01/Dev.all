#!/bin/sh

WALL_NAME=lelouchVI_1920x1080.png
WALLPAPERS_DIR=$HOME/wallpapers
mkdir -p $WALLPAPERS_DIR
cp ../wallpapers/* $WALLPAPERS_DIR
feh --bg-center --bg-fill $WALLPAPERS_DIR/$WALL_NAME & disown
echo "wallpaper was setup successfully!"
