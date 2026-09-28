#!/bin/bash

set -e

echo -e "\e[33mInstalling packages and dependencies...\e[0m"

install_package() {
    local package=$1
    local install=$2
    local condition=$3

    if eval "$condition"; then
        echo -e "\e[32m$package is already installed\e[0m"
    else
        echo -e "\e[33mInstalling $package\e[0m"
        eval "$install"
        echo -e "\e[32m$package installed successfully\e[0m"
    fi
}

# 1. OpenSSH Server
install_package "OpenSSH Server" "sudo apt install openssh-server -y" "command -v sshd &> /dev/null"

# 2. net-tools
install_package "Net Tools" "sudo apt install net-tools -y" "command -v netstat &> /dev/null"

# 3. Neovim
install_package "Neovim" "sudo snap install nvim --classic" "snap list | grep -q nvim"

# 4. PowerShell
install_package "PowerShell" "sudo snap install powershell --classic" "snap list | grep -q powershell"

# 5. Docker
if snap list | grep -q docker; then
    echo -e "\e[32mDocker is already installed\e[0m"
else
    echo -e "\e[33mInstalling Docker\e[0m"
    sudo snap install docker
    # Manage Docker as a non-root user
    echo -e "\e[33mConfiguring Docker for the current user...\e[0m"
    sudo groupadd docker
    sudo usermod -aG docker $USER
    echo -e "\e[32mDocker installed successfully\e[0m"
fi

echo -e "\e[32mPackage installation completed successfully!\e[0m"