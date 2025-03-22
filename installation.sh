#!/bin/bash

# Install the required updates
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y

# Run the configuration scripts
# - Install the packages and dependencies
bash ~/.dotfiles/ros.sh
# - Add aliases
bash ~/.dotfiles/aliases.sh

# Power off the distro
# sudo poweroff
