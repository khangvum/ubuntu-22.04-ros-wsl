#!/bin/bash

# Install the required updates
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y

# Run the configuration scripts
# - Add aliases
bash ~/.dotfiles/aliases.sh
# - Install the packages and dependencies
bash ~/.dotfiles/packages.sh
# - Install ROS 2
bash ~/.dotfiles/ros.sh
# - Configure WSL settings
bash ~/.dotfiles/wsl.sh

# Power off the distro
# sudo poweroff
