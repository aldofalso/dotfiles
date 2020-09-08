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

#remove cursor when idle
unclutter &

#dmenuclipboard
clipmenud &

#dwmbar
slstatus &

#dbus
dbus-launch --exit-with-session dwm

exec dwm
