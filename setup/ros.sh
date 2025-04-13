#!/bin/bash

# Check if ROS 2 is already installed
if dpkg -l | grep -q ros-humble; then
    echo -e "\e[32mROS 2 is already installed\e[0m"
else
    echo -e "\e[33mInstalling ROS 2\e[0m"

    # 1. Set locale
    sudo apt update && sudo apt install locales
    sudo locale-gen en_US en_US.UTF-8
    sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
    export LANG=en_US.UTF-8

    # 2. Setup sources
    # - Ensure Ubuntu Universe repository is enabled
    sudo apt install software-properties-common
    sudo add-apt-repository -y universe

    # - Add the ROS 2 GPG key with apt
    sudo apt update && sudo apt install curl -y
    sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

    # - Add the repository to your sources list
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

    # 3. Install ROS 2 packages
    sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y
    # - Desktop installation
    sudo apt install -y ros-humble-desktop

    # 4. Environment setup: Sourcing the setup script
    source /opt/ros/humble/setup.bash
fi

# ############################################################
# # UNCOMMENT THE FOLLOWING LINES IF YOU WANT TO INSTALL ROS 2
# ############################################################
# # Uninstall ROS 2
# # - Removed the binaries
# sudo apt remove ~nros-humble-* -y && sudo apt autoremove -y

# # - Removed the repository
# sudo rm -y /etc/apt/sources.list.d/ros2.list
# sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y