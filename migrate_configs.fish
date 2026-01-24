#!/bin/fish

set backup_dir ~/.config_backedup
set configs nvim i3 kitty
set walls ~/wallpapers
if test -d $backup_dir
	rm -rf $backup_dir
end

mkdir -p $backup_dir
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

if not test -d $walls
	echo "[fish][Create] wallpapers dir@$walls"
	mkdir -p $walls
end
cp ./wallpapers/* "$walls"
