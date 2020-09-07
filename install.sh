#!/bin/sh
##
# ~/config.sh

sudo xbps-install -Su

 #packages
 sudo xbps-install -S slock dmenu xsetroot xclip xorg-minimal xorg-video-drivers xinit xorg-server xss-lock xss-lock alsa-utils alsa-lib pcmanfm file-roller gvfs gvfs-mtp feh scrot mpv ufetch picom dejavu-fonts-ttf redshift gimp libreoffice man android-tools chromium telegram-desktop git youtube-dl ffmpeg psmisc xset cmatrix htop qemu bash-completion neovim lm_sensors mesa-vaapi mesa-vdpau vulkan-loader amdvlk NetworkManager curl elogind sxhkd galculator-gtk3 breeze-snow-cursor-theme gnome-themes-standard breeze-icons base-devel libX11-devel libXft-devel libXinerama-devel terminus-font noto-fonts-emoji go-mtpfs

  #config files
  mkdir /home/aldo/.config

  #cp files
 sudo cp -r /home/aldo/dotfiles/rules/49-nopasswd_global.rules /etc/polkit-1/rules.d/
 cp -r /home/aldo/dotfiles/.dwmbar /home/aldo/ 
 cp -r /home/aldo/dotfiles/.xinitrc /home/aldo/
 cp -r /home/aldo/dotfiles/.bashrc /home/aldo/
 cp -r /home/aldo/dotfiles/config/picom/ /home/aldo/.config/
 cp -r /home/aldo/dotfiles/config/redshift/ /home/aldo/.config/
 cp -r /home/aldo/dotfiles/wallpapers/ /home/aldo/
 cp -r /home/aldo/dotfiles/config/sxhkd/ /home/aldo/.config/
 cp -r /home/aldo/dotfiles/config/.icons /home/aldo/
 cp -r /home/aldo/dotfiles/config/gtk-3.0 /home/aldo/.config/
 cp -r /home/aldo/dotfiles/config/nvim /home/aldo/.config/

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
