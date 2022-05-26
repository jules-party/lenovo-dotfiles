#!/bin/sh

picom -b &
exec dunst &
nitrogen --set-scaled /home/jule/.wallpapers/wallhaven-426m79.jpg

xsetroot -cursor_name left_ptr &
xrdb ~/.Xresources
exec bspwm
