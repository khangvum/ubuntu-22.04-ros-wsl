#!/bin/bash

# Define the cleanup directory path
CLEANUP_PATH="/etc/ubuntu/.dotfiles/cleanup"

# Run the cleanup scripts
# - Uninstall the packages and dependencies
bash $CLEANUP_PATH/packages.sh
# - Uninstall ROS 2
bash $CLEANUP_PATH/ros.sh
# - Remove default user profile from WSL settings
bash $CLEANUP_PATH/wsl.sh

# Clean up the system
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y