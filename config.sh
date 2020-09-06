#!/bin/sh
##
# ~/config.sh

sudo xbps-install -Su

 #packages
 sudo xbps-install -S slock dmenu xsetroot xorg-minimal xorg-video-drivers xinit xorg-server xss-lock xss-lock vscode alsa-utils alsa-lib pcmanfm file-roller gvfs gvfs-mtp feh scrot mpv ufetch picom dejavu-fonts-ttf redshift gimp libreoffice man android-tools chromium telegram-desktop git youtube-dl ffmpeg psmisc xset cmatrix htop qemu bash-completion vim nano lm_sensors mesa-vaapi mesa-vdpau vulkan-loader amdvlk NetworkManager curl elogind sxhkd galculator-gtk3 breeze-snow-cursor-theme gnome-themes-standard breeze-icons base-devel libX11-devel libXft-devel libXinerama-devel terminus-font noto-fonts-emoji go-mtpfs

  #config files
  mkdir /home/aldo/.config
  mkdir /home/aldo/.config/redshift/
  mkdir /home/aldo/.config/sxhkd/
  mkdir /home/aldo/.config/picom/
  mkdir /home/aldo/wallpapers/
 
  #cp files
 sudo cp -r /home/aldo/dotfiles/rules/49-nopasswd_global.rules /etc/polkit-1/rules.d/
 cp -r /home/aldo/dotfiles/.dwmbar /home/aldo/ 
 cp -r /home/aldo/dotfiles/.xinitrc /home/aldo/
 cp -r /home/aldo/dotfiles/.bashrc /home/aldo/
 cp -r /home/aldo/dotfiles/config/picom/picom.conf /home/aldo/.config/picom/
 cp -r /home/aldo/dotfiles/config/redshift/redshift.conf /home/aldo/.config/redshift
 cp -r /home/aldo/dotfiles/wallpapers/wall.jpg /home/aldo/wallpapers/
 cp -r /home/aldo/dotfiles/config/sxhkd/sxhkdrc /home/aldo/.config/sxhkd/
 cp -r /home/aldo/dotfiles/config/.icons /home/aldo
 cp -r /home/aldo/dotfiles/config/gtk-3.0 /home/aldo/.config

  #autostart
  sudo ln -s /etc/sv/NetworkManager /var/service
  sudo ln -s /etc/sv/dbus/ /var/service

  sudo rm -rf /var/service/wpa_supplicant
  sudo rm -rf /var/service/dhcpcd
  
  #exec
  chmod +rx /home/aldo/.dwmbar

  #font in tty
  sudo sed -i 's/#FONT="lat9w-16"/FONT="ter-v32n"/g' /etc/rc.conf

  #suckless
  git clone https://github.com/aldofalso/dwm
  git clone https://github.com/aldofalso/st
  cd st && sudo make clean install && cd .. && cd dwm && sudo make clean install && cd ..

 #done
