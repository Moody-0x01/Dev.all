function move
    set src $argv[1]
    set dst $argv[2]
	echo "[ fish ][Move] $src -> $dst"
	mv $src $dst
end
