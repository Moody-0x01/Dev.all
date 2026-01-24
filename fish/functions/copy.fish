function copy
    set src $argv[1]
    set dst $argv[2]
	echo "[ fish ][Copy] $src -> $dst"
	cp -r $src $dst
end
