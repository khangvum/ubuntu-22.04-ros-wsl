# ROS on Ubuntu-22.04-WSL Configuration

A **_Robot Operating System_** (**_ROS_**) **_environment_** tailored for running on **_Ubuntu 22.04_** within **_Windows Subsystem for Linux_** (**_WSL_**). This setup promotes **_seamless integration_** between **_Windows_** and **_Ubuntu_**, allowing **_ROS_** to operate without the need of a traditional virtual machine (VM).

## Features

-   Seamless **_Windows interoperability_**, minimizing the overhead of a traditional virtual machine.
-   **_Cross-filesystem_** access between Linux and Windows.
-   Supports ROS **_virtualization_** tools such as **_Rviz_** and **_Gazebo Fortress_**.
-   Improved **_GPU acceleration_**, offering streamlined rendering.

## Filesystem Hierarchy

```
└── etc
    └── ubuntu
        └── .dotfiles
            ├── setup
            │   ├── aliases.sh
            │   ├── ros.sh
            │   ├── packages.sh
            │   └── wsl.sh
            └── setup.sh
```

`setup.sh` automates the **_dependency installation_** and **_environment set up_** process, including:

File            |Description
:--------------:|:----------
`aliases.sh`    |Shell **_aliases_**
`packages.sh`   |**_Packages_** and **_dependencies_** installation
`ros.sh`        |**_[ROS environment](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html)_** configuration
`wsl.sh`        |**_WSL-specific_** settings, configured in `/etc/wsl.conf`

## Applying Configuration

### Rebuild the Existing Image

1.  **Clone the repository:**

    ```bash
    sudo git clone https://github.com/khangvum/ubuntu-22.04-ros-wsl.git /etc/ubuntu/.dotfiles
    ```

2.  **Apply the settings:**

    ```bash
    bash /etc/ubuntu/.dotfiles/setup.sh
    ```

### Install a Fresh Distribution

1.  **Download the latest version of the distribution:** [ubuntu-22.04-ros.wsl](https://github.com/khangvum/ubuntu-22.04-ros-wsl/releases/download/v1.0.0/ubuntu-22.04-ros.wsl)

2.  **Install the distribution by double-clicking the file**

3.  **Launch the distribution and apply the settings:**

    ```bash
    bash /etc/ubuntu/.dotfiles/setup.sh
    ```

## Collaboration

This project is a collaboration between:

-   **Ton Nu Thanh Thao:** [GitHub](https://github.com/thaoton1910) | [LinkedIn](https://www.linkedin.com/in/ton-nu-thanh-thao/) | [Gmail](mailto:thaoton1910@gmail.com)
-   **Khang Vu:** [GitHub](https://github.com/khangvum) | [LinkedIn](https://www.linkedin.com/in/khangvum/) | [Gmail](mailto:manhkhang0305@gmail.com)