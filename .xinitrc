#!/bin/sh

#redshift
redshift &

#lock
xset dpms 180 &
xss-lock -- /bin/slock &

#keybinds
sxhkd &

#applets
nm-applet &
volumeicon &

#dwmbar
slstatus &

exec dwm
