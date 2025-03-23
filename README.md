# ROS on Ubuntu-22.04-WSL Configuration

A **_Robot Operating System_** (**_ROS_**) **_environment_** tailored for running on **_Ubuntu 22.04_** within **_Windows Subsystem for Linux_** (**_WSL_**). This setup promotes **_seamless integration_** between **_Windows_** and **_Ubuntu_**, allowing **_ROS_** to operate without the need of a traditional virtual machine (VM).

## Features

-   Seamless **_Windows interoperability_**, minimizing the overhead of a traditional virtual machine.
-   **_Cross-filesystem_** access between Linux and Windows.
-   Supports ROS **_virtualization tools_** such as **_Rviz_** and **_Gazebo_**.

## Filesystem Hierarchy

```
└── home
    └── khangvum
        └── .dotfiles
            ├── aliases.sh
            ├── ros.sh
            ├── packages.sh
            ├── wsl.sh
            └── installation.sh
```

`installation.sh` automates the **_dependency installation_** and **_environment set up_** process, including:

File            |Description
:--------------:|:----------
`aliases.sh`    | Contains useful **_shell aliases_**
`packages.sh`   | Installs required **_packages_** and **_dependencies_**
`ros.sh`        | Configures the **_[ROS environment](https://docs.ros.org/en/humble/Installation/Ubuntu-Install-Debs.html)_**
`wsl.sh`        | Sets up **_WSL-specific_** configurations

## Applying Configuration

1.  **Clone the repository:**

```bash
git clone https://github.com/khangvum/ubuntu-22.04-ros-wsl.git ~/.dotfiles
```

2.  **Apply the settings:**

```bash
bash ~/.dotfiles/installation.sh
```

## Collaboration

This project is a collaboration between:

-   **Ton Nu Thanh Thao**: [GitHub](https://github.com/thaoton1910) | [LinkedIn](https://www.linkedin.com/in/ton-nu-thanh-thao/) | [Gmail](mailto:thaoton1910@gmail.com)
-   **Khang Vu**: [GitHub](https://github.com/khangvum) | [LinkedIn](https://www.linkedin.com/in/khangvum/) | [Gmail](mailto:manhkhang0305@gmail.com)