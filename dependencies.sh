#!/bin/bash

#Update package list
sudo apt update

#Install dependencies 
sudo apt install -y i3 i3status i3lock parcellite feh dex picom nitrogen x11-xserver-utils network-manager-gnome brightnessctl pulseaudio pavucontrol thunar xarchiver brave-browser flameshot git

nitrogen --set-zoom-fill ~/Pictures/Wallpapers/default_wallpaper.jpg

echo -e  "\nAll dependencies packages are now installed\n" 
