#!/bin/fish

set backup_dir ~/.config_backedup
set configs nvim i3 kitty

echo "[!] rolling back from $backup_dir"

for cfg in $configs
	if test -d $backup_dir/$cfg
		rm -rf ~/.config/$cfg
		copy $backup_dir/$cfg ~/.config/
	end
end

if test -d ~/xinit.d
	rm -rf ~/xinit.d
end
move $backup_dir/xinit.d/ ~
