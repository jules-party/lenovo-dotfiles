#!/bin/sh
noti=$(dunst -print)
sudo echo $noti >> ~/.logs/scripts/noti.log
