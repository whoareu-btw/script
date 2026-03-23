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

	if "$@" 2>1 | tee -a "$LOG_FILE"; then
		log_message "$desc success"
	else
		log_message "$desc success"
		exit 1
	fi
}

run_task "Updating system ..." sudo dnf update -y

PACKAGE_SWAY="sway swaylock swaybg waybar rofi"
run_task "Installing sway and related stuff ..." sudo dnf install --setopt=install_weak_deps=False -y $PACKAGE_SWAY

PACKAGE_DEV="git neovim podman distrobox nix nix-daemon"
run_task "Installing dev tools ..." sudo dnf install ---setopt=install_weak_deps=False -y $PACKAGE_DEV

log_message "Proccess done, log saved in: $LOG_FILE"
