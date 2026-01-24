#!/usr/bin/fish

# This file will install everything I need in order to startup my env as I want it on arch linux
# so basicallyy it will load up all my .files into .confing.
# then also install i3, kitty, steam, spotify... etcetra

set pacman_packages pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber xorg-server xorg-xinit xorg-xrandr xorg-xsetroot i3 kitty neovim feh ttf-jetbrains-mono mupdf mpv xf86-video-intel
set aur_packages "zen-browser-bin"

echo "Starting package installation..."
echo "Updating system..."
sudo pacman -Syu --noconfirm

echo "Installing packages from official repos..."
for pkg in $pacman_packages;
	echo $pkg
end

sudo pacman -S --needed --noconfirm $pacman_packages

if not command -v yay &> /dev/null
    echo "yay not found. Installing yay..."
    sudo pacman -S --needed --noconfirm git base-devel
    cd /tmp
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
end

if test (count $aur_packages) -gt 0
    echo "Installing packages from AUR..."
    for pkg in $aur_packages;
        echo "  - $pkg"
    end
    yay -S --needed --noconfirm $aur_packages
end

echo "Enabling PipeWire services..."
systemctl --user enable --now pipewire pipewire-pulse wireplumber
if test -d ~/.config/fish
	mv ~/.config/fish ~/.config_backedup
end
cp -r ./fish/  ~/.config/
echo "All packages installed successfully! please call ./migrate_configs.fish to finish setting up configuration"
