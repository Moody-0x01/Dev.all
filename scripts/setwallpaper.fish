#!/bin/fish

ex_assert "feh"
set WALLPAPER "~/wallpaper/lelouchVI_1920x1080.png"
if not file_exists $WALLPAPER
	mkdir -p ~/wallpaper/
	cp -r ../wallpapers/* ~/wallpaper/
end
feh --bg-center $WALLPAPER &
