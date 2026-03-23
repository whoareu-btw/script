# Bash script
I expected you already have git package, use command below:
- $ git clone https://github.com/whoareu-btw/script

Script installer for debian, fedora and alpine. This script will update and upgrading system first, after that will install packages below:
Window manager and stuff related:
- sway
- swaylock
- waybar
- rofi
- network-manager-applet
- pavucontrol
- nwg-look (on fedora use: $ nix profile add nixpkgs#nwg-look) 

Dev tools:
- neovim
- distrobox
- podman
- nix and nix-daemon (on fedora)

How to use this script?
For example I use fedora version:
- $ bash fedora-script-install.sh

How to activate nix daemon on fedora?
- $ sudo systemctl enable --now nix-daemon
- $ systemctl reboot

NOTE!:
This script still experimental, if you want to give suggestions just let me know about that ദ്ദി(˵ •̀ ᴗ - ˵ ) ✧
