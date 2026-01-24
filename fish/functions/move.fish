function move
    set src $argv[1]
    set dst $argv[2]
	echo "-f [ fish ][Move] $src -> $dst"
	mv -f $src $dst
end
