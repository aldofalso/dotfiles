#!/bin/sh
#install.sh

sudo pacman -S gvfs gvfs-mtp alsa-lib alsa pulseaudio pulseaudio-alsa volumeicon networkmanager network-manager-applet brightnessctl slock xss-lock feh scrot ttf-dejavu redshift acpi sxhkd dmenu kitty libx11 libxinerama libxft webkit2gtk vim git thunar 

#config files
cp -r ~/dotfiles/.config ~/ 
sudo cp ~/dotfiles/scripts/* /usr/local/bin
cp -r ~/dotfiles/.xinitrc ~/
cp ~/.vimrc ~/

#trackpad
  sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection
EOF

echo "shopt -s autocd" | tee -a ~/.bashrc

#suckless
git clone https://github.com/aldofalso/dwm
git clone https://github.com/aldofalso/slstatus

cd ~/dotfiles/dwm && sudo make clean install && cd .. && cd slstatus && sudo make clean install 

printf "Done!\n\n"
