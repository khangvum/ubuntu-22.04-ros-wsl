#!/bin/bash

# Uninstall ROS 2
if dpkg -l | grep -q ros-humble; then
    echo -e "\e[33mUninstalling ROS 2\e[0m"
    
    # - Remove the binaries
    sudo apt remove ~nros-humble-* -y && sudo apt autoremove -y

    # - Remove the repository
    sudo rm -f /etc/apt/sources.list.d/ros2.list
else
    echo -e "\e[36mROS 2 is not installed\e[0m"
fi