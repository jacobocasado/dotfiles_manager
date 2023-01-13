#!/bin/bash

# This is a script to automate the copy of my dotfiles. 
# In this version I am saving the configuration of:
# i3wm / compron / rofi / alacritty / wallpaper(feh)

# At this moment, this script needs to be in the .git folder where I want to 
git pull

mkdir .config 
# i3 (i3blocks and i3 base config, as well as a clipboard fix)
cp -r ~/.config/i3 .config/i3
# Compton
cp -r ~/.config/compton .config/compton
# Rofi
cp -r ~/.config/rofi .config/rofi
# febh
cp ~/.fehbg .fehbg
# Alacritty
cp ~/.config/alacritty .config/alacritty
# Wallpaper
cp -r ~/.wallpaper .wallpaper

echo  "Done! Grab some wallpaper and run pywal -i filename to set your color scheme. To have the wallpaper set on every boot edit ~.fehbg"

