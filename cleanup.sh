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

# Remove git folders
sudo rm -R /etc/ubuntu/.dotfiles/.git
rm /etc/ubuntu/.dotfiles/LICENSE
rm /etc/ubuntu/.dotfiles/README.md

# Remove any user profile in the /home directory
for dir in /home/*; do
    if [ -d "$dir" ]; then
        echo -e "\e[33mRemoving /home/$package\e[0m"
        rm -rf "$dir"
    fi
done

# Clean up the system
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y