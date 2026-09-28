#!/bin/bash

set -e

echo "Configuring Git settings..."

# Set the default branch name for new repositories to 'main'
git config --global init.defaultBranch "main"

# Automatically set up the upstream tracking branch on push
git config --global push.autoSetupRemote true

echo "Git configuration completed successfully!"
echo "Current global Git settings:"
git config --global --get init.defaultBranch
git config --global --get push.autoSetupRemote