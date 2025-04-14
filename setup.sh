#!/bin/bash

# Define the setup directory path
SETUP_PATH="/etc/ubuntu/.dotfiles/setup"

# Install the required updates
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y

# Run the setup scripts
# - Add aliases
bash $SETUP_PATH/aliases.sh
# - Install the packages and dependencies
bash $SETUP_PATH/packages.sh
# - Install ROS 2
bash $SETUP_PATH/ros.sh
# - Configure WSL settings
bash $SETUP_PATH/wsl.sh

# Power off the distro
sudo shutdown -h now
