#!/bin/bash
current_tty=$(tty)

case "$current_tty" in
	/dev/tty1)
		./run_i3.fish
		;;
	/dev/tty2)
		./run_minecraft.fish
		;;
	/dev/tty3)
		./run_steam.fish
		;;
	*)
		./run_i3.fish
		;;
esac
