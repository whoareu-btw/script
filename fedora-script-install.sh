#!/bin/bash
set -euo pipefail

LOG_FILE="fedora-script-install_$(date +%Y%m%d_%H%M).log"

log_message() {
	echo -e "[$(date +'%Y-%m-%d %H:%M:%S') $1]" | tee -a "LOG_FILE"
}

run_task() {
	local desc="$1"
	shift

	log_message "$desc..."

	if "$@" 2>&1 | tee -a "$LOG_FILE"; then
		log_message "$desc success"
	else
		log_message "$desc success"
		exit 1
	fi
}

run_task "Updating system" sudo dnf update -y

PACKAGE_SWAY="sway swaylock swaybg waybar rofi network-manager-applet pavucontrol xorg-x11-server-Xwayland"
run_task "Installing sway and related stuff" sudo dnf install -y --setopt=install_weak_deps=False $PACKAGE_SWAY

PACKAGE_DEV="neovim podman distrobox nix nix-core nix-legacy nix-devel nix-doc nix-filesystem nix-system nix-libs nix-daemon"
run_task "Installing dev tools" sudo dnf install -y --setopt=install_weak_deps=False $PACKAGE_DEV

log_message "Proccess done, log saved in: $LOG_FILE"
