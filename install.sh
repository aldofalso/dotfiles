#!/bin/sh
# install.sh

sudo xbps-install -Su

#packages
sudo xbps-install slock dmenu xsel unclutter-xfixes xorg-minimal xorg-video-drivers xinit xorg-server xss-lock xss-lock alsa-utils alsa-lib pcmanfm file-roller gvfs gvfs-mtp feh scrot mpv ufetch picom dejavu-fonts-ttf redshift gimp libreoffice man android-tools chromium telegram-desktop git youtube-dl ffmpeg psmisc cmatrix htop qemu bash-completion neovim lm_sensors mesa-vaapi mesa-vdpau vulkan-loader amdvlk NetworkManager curl elogind sxhkd galculator-gtk3 breeze-snow-cursor-theme gnome-themes-standard breeze-icons base-devel libX11-devel libXft-devel libXinerama-devel terminus-font noto-fonts-emoji go-mtpfs clipmenu clipnotify rxvt-unicode

#config files
cp -r ~/dotfiles/.config ~/ 
sudo cp -r ~/dotfiles/rules/49-nopasswd_global.rules /etc/polkit-1/rules.d/
sudo cp ~/dotfiles/scripts/* /usr/local/bin
cp -r ~/dotfiles/.xinitrc ~/
cp -r ~/dotfiles/.bashrc ~/
cp -r ~/dotfiles/.Xdefaults ~/
cp -r ~/dotfiles/wallpapers/ ~/
cp -r ~/dotfiles/.config/.icons/ ~/

#font in tty
sudo sed -i 's/#FONT="lat9w-16"/FONT="ter-v32n"/g' /etc/rc.conf

#suckless
git clone https://github.com/aldofalso/dwm
git clone https://github.com/aldofalso/slstatus

cd dwm && sudo make clean install && cd .. && cd slstatus && sudo make clean install && cd ~/

#autostart
sudo ln -s /etc/sv/NetworkManager /var/service
sudo ln -s /etc/sv/dbus/ /var/service

sudo rm -rf /var/service/wpa_supplicant
sudo rm -rf /var/service/dhcpcd

#done
