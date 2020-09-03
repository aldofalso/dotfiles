#!/bin/sh
##
## ~/.xinitrc

#wallpaper
feh --bg-scale /home/aldo/wallpapers/wall.jpg &

#picom
picom &

#redshift
redshift &

#lock
xss-lock -- /usr/bin/slock &

#keybinds
sxhkd &

#dwmbar
~/.dwmbar &

#dbus
dbus-launch --exit-with-session dwm

exec dwm
