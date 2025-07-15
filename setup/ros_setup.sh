#!/bin/bash
# Source ROS 2 Humble
source /opt/ros/humble/setup.bash

# Source Nav2 if installed
if [ -f /opt/ros/humble/share/nav2_bringup/local_setup.bash ]; then
    source /opt/ros/humble/share/nav2_bringup/local_setup.bash
fi
