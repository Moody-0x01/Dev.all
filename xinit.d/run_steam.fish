#!/bin/fish
export __GL_SHADER_DISK_CACHE=1
export __GL_THREADED_OPTIMIZATION=1
export MESA_GLTHREAD=true

ex_assert "steam"
ex_assert "openbox"
ex_assert "sleep"
openbox &
sleep 1
exec steam -bigpicture
