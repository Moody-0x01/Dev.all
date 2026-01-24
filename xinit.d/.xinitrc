#!/bin/bash
current_tty=$(tty)
export PATH="$PATH:$HOME/xinit.d/"
case "$current_tty" in
	/dev/tty1)
		run_i3.fish
		;;
	/dev/tty2)
		run_minecraft.fish
		;;
	/dev/tty3)
		run_steam.fish
		;;
	/dev/tty4)
		exec kitty
		;;
	*)
		run_i3.fish
		;;
esac
