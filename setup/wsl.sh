#!/bin/bash

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
hostname=ubuntu

[user]
default=$(whoami)
EOF