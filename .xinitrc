#!/bin/sh
##
## ~/.xinitrc

#wallpaper
feh --bg-scale /home/aldo/wallpapers/wall.jpg &

#picom
picom -f -D 5 -I 0.03 -O 0.03 &

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
