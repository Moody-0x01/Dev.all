# This is a script that runs my xstart on login.
# very simple and reliable.
function autostartx
	if status is-login
		if test -z "$DISPLAY"
			startx ~/xinit.d/.xinitrc
		end
	end
	echo "[fish] startx!"
end
