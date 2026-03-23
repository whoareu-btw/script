#!/bin/bash
set -euo pipefail

LOG_FILE="alpine-install-script_$(date +%Y%m%d_%H%M).log"

log_message() {
	echo -e "[$(date +'%Y-%m-%d %H:%M:%S') $1]" | tee -a "$LOG_FILE"
}

run_task() {
	local desc="$1"
	shift

	log_message "$desc..."

	if "$@" 2>1 | tee -a "$LOG_FILE"; then
		log_message "$desc success "
	else
		log_message "$desc failed"
		exit 1
	fi
}

run_task "Updating repository and upgrading system" sudo apt update && sudo apt upgrade

PACKAGE_SWAY="sway swaylock swaybg waybar rofi network-manager-applet pavucontrol nwg-look"
run_task "Installing sway and related stuff" sudo apt install $PACKAGE_SWAY

PACKAGE_DEV="neovim podman distrobox"
run_task "Installing dev tools" sudo apt install $PACKAGE_DEV

log_message "Proccess done, log saved in: $LOG_FILE"
