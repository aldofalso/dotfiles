#!/bin/sh
##
## ~/.xinitrc

#wallpaper
feh --bg-scale /home/aldo/wallpapers/wall.jpg &

#picom
picom &

#volumeicon
volumeicon &

#redshift
redshift &

#lock
xss-lock -- /usr/bin/slock &

#dwmbar
~/.dwmbar &

#dbus
dbus-launch --exit-with-session dwm

exec dwm
