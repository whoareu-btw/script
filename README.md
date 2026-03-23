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
- nwg-look (for fedora by using this command: $ nix profile add nixpkgs#nwg-look)
- xwayland
- bash (for alpine)

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

How to change shell to bash on alpine?
- $ chsh -s /usr/bin/bash
- use command: "$ which bash" for knowing where bash directory at, if you dont know where bash directory at.

Why xwayland and sudo not found on alpine?
Because xwayland and sudo at community repository, you can edit manual in apk config for adding community repo or you can use command below:
- su
- setup-xorg-base (still su)
- apk add sudo (still su)

NOTE!:
This script still experimental, if you want to give suggestions just let me know about that ദ്ദി(˵ •̀ ᴗ - ˵ ) ✧
