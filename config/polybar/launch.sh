#!/bin/sh

CONF="$HOME/.config/polybar/config.ini"

# kills polybar to not spawn 2
killall -q  polybar
#while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done
#echo "launching polybar..."
polybar mybar -c $CONF &
polybar music -c $CONF &
bspc config bottom_padding 18 &
