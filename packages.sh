#!/bin/bash

# 1. OpenSSH Server
sudo apt install openssh-server -y

# 2. net-tools
sudo apt install net-tools

# 3. Neovim
sudo snap install nvim --classic

# 4. PowerShell
sudo snap install powershell --classic

# 5. Docker
sudo snap install docker
# Manage Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker $USER