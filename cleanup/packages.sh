#!/bin/bash

uninstall_package() {
    local package=$1
    local uninstall=$2
    local condition=$3

    if eval "$condition"; then
        echo -e "\e[33mUninstalling $package\e[0m"
        eval "$uninstall"
    else
        echo -e "\e[36m$package is not installed\e[0m"
    fi
}

# 1. OpenSSH Server
uninstall_package "OpenSSH Server" "sudo apt remove --purge openssh-server -y" "command -v sshd &> /dev/null"

# 2. Net Tools
uninstall_package "Net Tools" "sudo apt remove --purge net-tools -y" "command -v netstat &> /dev/null"

# 3. Neovim
uninstall_package "Neovim" "sudo snap remove nvim" "snap list | grep -q nvim"

# 4. PowerShell
uninstall_package "PowerShell" "sudo snap remove powershell" "snap list | grep -q powershell"

# 5. Docker
uninstall_package "Docker" "sudo snap remove docker && sudo groupdel docker" "snap list | grep -q docker"