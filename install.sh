#!/bin/sh
# nix config files

sudo apt install i3 xss-lock brightnessctl xwallpaper sct arandr vim chromium htop screenfetch blueman scrot lm-sensors acpi tlp intel-microcode build-essential psmisc

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
