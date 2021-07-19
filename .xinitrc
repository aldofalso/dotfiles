#!/bin/sh

#redshift
redshift &

#lock
xset dpms 300 &
xss-lock -- /bin/slock &

#keybinds
sxhkd &

#applets
nm-applet &
volumeicon &

#dwmbar
slstatus &

#winxp startup sound
aplay ~/.config/winxp.wav &

exec dwm
