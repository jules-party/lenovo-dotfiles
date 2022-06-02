#!/bin/sh

picom -b &
exec dunst &
nitrogen --set-scaled /home/jule/.wallpapers/arch.png

xsetroot -cursor_name left_ptr &
#xrdb ~/.Xresources
exec bspwm
#exec sway
