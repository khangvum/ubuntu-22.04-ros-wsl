#!/bin/bash

set -e

echo -e "\e[33mConfiguring WSL settings...\e[0m"

# Configure WSL global settings
sudo tee /etc/wsl.conf > /dev/null << EOF
[boot]
systemd=true

[automount]
enabled=true
root=/mnt/

[interop]
appendWindowsPath=true
enabled=true

[network]
generateHosts=true
generateResolvConf=true
hostname=ubuntu-2204-ros

[user]
default=$(whoami)
EOF

echo -e "\e[32mWSL settings configured successfully!\e[0m"