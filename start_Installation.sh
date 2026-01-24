#!/bin/bash
set -eu

mkdir -p ~/.config/
mkdir -p ~/.config_backedup

sudo pacman -Syu
sudo pacman -S --needed --noconfirm fish
chmod +x ./xinit.d/*.fish
chmod +x ./*.sh
chmod +x ./*.fish
chmod +x ./scripts/*

./install_env.fish
