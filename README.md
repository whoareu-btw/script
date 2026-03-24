# Bash script
### Requirements before use this script:
- internet connection
- git
- sudo privileges
- bash (for alpine)

### Tested environments:
- Alpine Linux 3.23 (container)
- Debian Trixie/13 (container)
- Fedora 43 (container)

**WARNING!** : Before use this script, highly recommend to use VM or experiment device ( • ̀ω•́ )✧

### Use this command for cloning:
- $ git clone https://github.com/whoareu-btw/script

Script installer for debian, fedora and alpine. This script will update and upgrading system first, after that will install packages below:

### Window manager stack:
- sway
- swaylock
- waybar
- rofi
- network-manager-applet
- pavucontrol
- nwg-look (debian only)
- xwayland

Dev tools:
- neovim
- distrobox
- podman
- nix and nix-daemon (fedora only)

### Note for alpine
Use this command before using this script:
- $ su
- \# setup-xorg-base
- \# apk add sudo

### How to use this script?
For example I use fedora version:
- $ bash fedora-script-install.sh

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
