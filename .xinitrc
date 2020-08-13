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

#automount
devmon &

#lock
xss-lock -- /usr/bin/slock &

#scripts
clock() {

        clock="$(date +"%Y %b %d (%a) %I:%M %p")"
        echo $clock
}

cpuload() {

        read -r load x </proc/loadavg
        echo "$load% |"
}

cputemp() {

        read -r temp </sys/devices/platform/coretemp.0/hwmon/hwmon1/temp1_input
        echo ${temp%???}°
}

mem() {

        free -m | awk 'NR==2{printf"%s/%sMB (%.2f%%) |", $3,$2,$3*100/$2 }'
}

ipaddr(){

        ip addr show wlp3s1|grep inet |head -1 | awk '{print$2" | "}'
}

while true; do
        xsetroot -name " $(ipaddr)$(mem) $(cputemp) $(cpuload) $(clock) "
   sleep 60s #update time every minute
done &

dbus-launch --exit-with-session dwm

exec dwm
