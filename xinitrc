#!/bin/sh

picom -b
exec dunst &
$HOME/.local/bin/setbg -l &

xsetroot -cursor_name left_ptr &
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
exec bspwm
