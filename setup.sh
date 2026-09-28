#!/bin/bash

# Define the setup directory path
SETUP_PATH="/etc/ubuntu/.dotfiles/setup"

echo -e "\e[33mStarting Ubuntu and ROS 2 environment setup...\e[0m"

# Install the required updates
echo -e "\e[33mInstalling the required updates...\e[0m"
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y
echo -e "\e[32mSystem updates completed successfully!\e[0m"

# Run the setup scripts
echo -e "\e[33mRunning shell aliases setup...\e[0m"
bash $SETUP_PATH/aliases.sh
echo -e "\e[33mRunning Git setup...\e[0m"
bash $SETUP_PATH/git.sh
echo -e "\e[33mRunning package setup...\e[0m"
bash $SETUP_PATH/packages.sh
echo -e "\e[33mRunning ROS 2 setup...\e[0m"
bash $SETUP_PATH/ros.sh
echo -e "\e[33mRunning WSL setup...\e[0m"
bash $SETUP_PATH/wsl.sh

echo -e "\e[32mUbuntu and ROS 2 environment setup completed successfully!\e[0m"