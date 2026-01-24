#!/bin/fish

set backup_dir ~/.config_backedup
set configs nvim i3 kitty
mkdir -p backup_dir
echo "[!] Backing up configs into $backup_dir"

for cfg in $configs
	if test -d ~/.config/$cfg
		move ~/.config/$cfg $backup_dir
	end
	copy $cfg ~/.config/
end
if test -d ~/.xinit.d/
	move ~/.xinit.d/ $backup_dir
end
copy ./xinit.d/ ~
