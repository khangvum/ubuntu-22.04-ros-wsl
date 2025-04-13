#!/bin/bash

# Define the setup directory path
DOTFILES_PATH="/etc/ubuntu/.dotfiles/setup"

# Install the required updates
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y

# Run the setup scripts
# - Add aliases
bash $DOTFILES_PATH/aliases.sh
# - Install the packages and dependencies
bash $DOTFILES_PATH/packages.sh
# - Install ROS 2
bash $DOTFILES_PATH/ros.sh
# - Configure WSL settings
bash $DOTFILES_PATH/wsl.sh

# Power off the distro
sudo shutdown -h now
