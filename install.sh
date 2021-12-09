#!/bin/sh
# nix config files

sudo apt install i3 xss-lock brightnessctl xwallpaper redshift arandr vim chromium htop neofetch blueman scrot lm-sensors acpi tlp intel-microcode build-essential

# config files
cp -r ~/dotfiles/.config ~/ 
cp ~/dotfiles/.vimrc ~/

# trackpad
  sudo mkdir -p /etc/X11/xorg.conf.d && sudo tee <<'EOF' /etc/X11/xorg.conf.d/90-touchpad.conf 1> /dev/null
Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
EndSection
EOF

echo "shopt -s autocd" | tee -a ~/.bashrc

printf "Done!\n\n"
