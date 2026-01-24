#!/bin/fish
ex_assert "i3"
ex_assert "feh"

set __walls "$HOME/wallpapers"
set WALL (random choice $__walls/*)
feh --bg-center $WALL
feh --bg-center "$__walls/$WALL"
exec i3
