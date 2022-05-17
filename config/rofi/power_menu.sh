#!/bin/sh

chosen=$(printf "  Power off\n  Restart\n  Lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case $chosen in
  "  Power Off") poweroff               ;;
  "  Restart")   reboot                 ;;
  "  Lock")      betterlockscreen -l    ;;
  *)           exit 1                 ;;
esac
