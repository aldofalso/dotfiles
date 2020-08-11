#!/bin/sh
##
## ~/.xinitrc

#wallpaper
feh --bg-scale /home/aldo/wallpapers/wall.jpg &

#volumeicon
volumeicon &

#redshift
redshift &

#picom
picom &

#lock
xss-lock -- /usr/bin/slock &

#script
clock() {
	clock="$(date +"%Y %b %d (%a) %I:%M %p")"
	echo -e "$clock "
}


cpuload() {
	read -r load x </proc/loadavg
	echo "$load% |" 
}

cputemp() {
	read -r temp </sys/devices/platform/coretemp.0/hwmon/hwmon1/temp1_input
        echo "${temp%???}° |"
}


mem() {
	mem=`free | awk '/Mem/{printf"%d-%d |",$3 / 1024.0, $2 / 1024.0 }'`
	echo -e "$mem"
}

ipaddr(){

ip addr show wlan0|grep inet |head -1 | awk '{print$2" | "}'
}

while true; do
	xsetroot -name " $(ipaddr)$(mem) $(cputemp) $(cpuload) $(clock)"	
   sleep 60s #update time every minute
done &

exec dwm
