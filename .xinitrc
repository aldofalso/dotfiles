#!/bin/sh
##
## ~/.xinitrc

#keyboard
setxkbmap -layout it &

#wallpaper
feh --bg-scale /home/aldo/wallpapers/wall.png &

#volumeicon
volumeicon &

#redshift
redshift -l 41.901571:12.498313 &

#picom
picom &

#script
while true; do
   xsetroot -name "$( date +"%Y %b %d (%a) %I:%M %p" )"
   sleep 1m   # Update time every minute
done &

exec dwm
