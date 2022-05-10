#!/bin/sh

status=$(playerctl status)

if [ "$status" = "Paused" ];
then
    echo "  "
elif [ "$status" = "Playing" ];
then
    echo " 契 "
fi
