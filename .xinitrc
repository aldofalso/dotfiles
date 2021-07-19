#!/bin/sh
#.xinitrc

#redshift
redshift &

#lock
xset dpms 300 &
xss-lock -- /usr/bin/slock &

#keybinds
sxhkd &

#applets
nm-applet &
volumeicon &

#dwmbar
slstatus &

#dmenu clipboard
clipmenud &

#remove cursor when idle
unclutter &

#winxp startup sound
aplay ~/.config/winxp.wav &

exec dwm
