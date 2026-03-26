# Bash script

### UPDATE!!!
Now this script rewrite to Python /ᐠ˵> ˕ <˵マ. But, Bash script still there as wrapper for Python files and for installing Python package! ENJOY THIS UPDATE, EVERYNYAN ⸜(｡˃ ᵕ ˂ )⸝♡

### Requirements before using this script:
- internet connection
- git
- sudo privileges
- bash

### Tested environments:
- Alpine Linux 3.23 (container)
- Arch Linux (container)
- Debian Linux Trixie/13 (container)
- Fedora Linux 43 (container)

**WARNING!** : Before use this script, highly recommend to use VM or experiment device for better experience ( • ̀ω•́ )✧

### Use this command for cloning:
- $ git clone https://github.com/whoareu-btw/script

Script installer for Alpine, Arch, Debian and Fedora. This script will update repository and upgrade system first, after that will install packages below:

### Window manager stack:
- sway → Window manager
- swaylock → Lock screen
- waybar → Status bar
- rofi → Application launcher
- network-manager-applet → Tray network controller
- pavucontrol → Pipewire-pulse or Pulseaudio GUI volume control
- nwg-look (Arch and Debian only) → GUI tool to configure GTK themes, icons, fonts and cursor Wayland window manager
- xwayland → Compability layer for running x11 apps on Wayland

### Dev tools:
- neovim → Text editor
- distrobox → Tool for creating containers by using Podman or Docker 
- podman → Rootless container engine
- nix and nix-daemon (Fedora only) → Declarative package and environment manager

### Note for alpine
Use this command before using this script:
- $ su
- \# setup-xorg-base
- \# apk add sudo

### How to use this script?
Simply by using this command:
- $ bash main.sh

### How to activate nix daemon on fedora if not enable yet?
- $ sudo systemctl enable --now nix-daemon
- $ systemctl reboot

### How to install something with nix? This command will use flakes
- $ nix profile add nixpkgs#nerd-fonts.iosevka
- $ nix profile add nixpkgs#nwg-look

### How to use distrobox?
- $ distrobox create -n arch -i archlinux (if you didn't have podman images, it will pull image first before create container)
- $ distrobox enter arch
- $ sudo pacman -S nwg-look

**NOTE!** : This script still **experimental**, if you want to give suggestions just let me know about that ദ്ദി(˵ •̀ ᴗ - ˵ ) ✧
