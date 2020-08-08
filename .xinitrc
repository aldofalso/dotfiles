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
	echo -e " $clock "
}

cpuload() {
	read -r load x </proc/loadavg
	echo "$load%  |" 
}

cputemp() {
	read -r temp </sys/devices/platform/coretemp.0/hwmon/hwmon1/temp1_input
        echo "${temp%???}°  |"
}

wifi() {
	ping -c1  8.8.8.8 &>/dev/null
	if [ "$?" = 0 ]
	then
	   echo "  |"
	  else
	   echo " wifi down|"
	fi
}

mem() {
	mem=`free | awk '/Mem/ {printf "%d/%d  |", $3 / 1024.0, $2 / 1024.0 }'`
	echo -e "$mem"
}

while true; do
	xsetroot -name "$(wifi) $(mem) $(cputemp) $(cpuload) $(clock)"	
   sleep 60s #update time every minute
done &

exec dwm
