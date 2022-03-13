#!/bin/sh
picom -b --experimental-backends --config ~/.config/picom/picom.conf
# dwm status bar config  

while true; do
   # clock conf
   tme() {
     tme=$( date +"%I:%M%P" )
     echo -e "🕓 $tme"
   }
   dte() {
     dte=$( date +"%a %b %e")
     echo -e "🗓️ $dte"
   }
   vol() {
     vol=$(pamixer --get-volume-human)
     if [ "$vol" = "muted" ];then
         echo -e '🔇'
     else
         echo -e "🔊 $vol"
     fi
   }
   spotify () {
    if ps -C spotify > /dev/null; then
        PLAYER="spotify"
    elif ps -C spotifyd > /dev/null; then
        PLAYER="spotifyd"
    fi

    if [ "$PLAYER" = "spotify" ] || [ "$PLAYER" = "spotifyd" ]; then
        ARTIST=$(playerctl metadata artist)
        TRACK=$(playerctl metadata title)
        POSITION=$(playerctl position | sed 's/..\{6\}$//')
        DURATION=$(playerctl metadata mpris:length | sed 's/.\{6\}$//')
        STATUS=$(playerctl status)
        SHUFFLE=$(playerctl shuffle)
        if [ "$STATUS" = "Playing" ]; then
            STATUS="▶"
        else
            STATUS=""
        fi
        
	if [ -z "$ARTIST" ];then
	    ARTIST="Advertisment"
	fi

        if [ "$SHUFFLE" = "On" ]; then
            SHUFFLE=" 咽"
        else
            SHUFFLE=""
        fi
        
        if [ "$PLAYER" = "spotify" ]; then
            printf "%s%s %s - %s " "$SEP1" "$STATUS" "$ARTIST" "$TRACK"
            printf "%0d:%02d" $((DURATION%3600/60)) $((DURATION%60))
            printf "%s\n" "$SEP2"
        else
            printf "%s%s %s - %s " "$SEP1" "$STATUS" "$ARTIST" "$TRACK"
            printf "%0d:%02d/" $((POSITION%3600/60)) $((POSITION%60))
            printf "%0d:%02d" $((DURATION%3600/60)) $((DURATION%60))
            printf "%s%s\n" "$SHUFFLE" "$SEP2"
        fi
    fi
   }
   bat() {
     bat=$(cat /sys/class/power_supply/BAT0/capacity) # battery level
     bat_chg=$(cat /sys/class/power_supply/BAT0/status)
     echo -e "🔋 $bat%"
   }
   xsetroot -name " [ $(spotify) ] [ $(vol) ] [ $(bat) ] [ $(dte) ] [ $(tme) ]"
done &
exec dunst &
while type dwm >/dev/null ; do dwm && continue || break ; done
