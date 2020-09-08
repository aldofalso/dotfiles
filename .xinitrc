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

#remove mouse when idle
unclutter &

#dmenuclipboard
clipmenud &

#dwmbar
~/.config/dwmbar &

#dbus
dbus-launch --exit-with-session dwm

exec dwm
