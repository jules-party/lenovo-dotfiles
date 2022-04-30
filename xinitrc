#!/bin/sh

picom -b --experimental-backends --config ~/.config/picom/picom.conf
exec dunst &
$HOME/.local/bin/setbg -l &
pkill polybar

xsetroot -cursor_name left_ptr &
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
exec bspwm
