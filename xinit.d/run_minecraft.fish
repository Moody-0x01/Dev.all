#!/bin/fish
export __GL_SHADER_DISK_CACHE=1
export __GL_THREADED_OPTIMIZATION=1
export MESA_GLTHREAD=true
set TLAUNCHER_PATH "/usr/share/tlauncher/tlauncher.jar"

ex_assert "gamemoderun"
ex_assert "java"

if file_exists $TLAUNCHER_PATH
	gamemoderun java -jar $TLAUNCHER_PATH &
	wait $!
	exit $?
else
	echo "$TLAUNCHER_PATH does not exist. make sure u installed tlauncher before running this startup script." >&2
	exit 1
end
