# #!/bin/bash

# # 1. OpenSSH Server
# if dpkg -l | grep -q openssh-server; then
#     echo "OpenSSH Server is already installed."
# else
#     sudo apt install openssh-server -y
# fi

# # 2. net-tools
# if dpkg -l | grep -q net-tools; then
#     echo "Net Tools is already installed."
# else
#     sudo apt install net-tools
# fi

# # 3. Neovim
# if command -v nvim &> /dev/null; then
#     echo "Neovim is already installed."
# else
#     sudo snap install nvim --classic
# fi

# # 4. PowerShell
# if command -v powershell &> /dev/null; then
#     echo "PowerShell is already installed."
# else
#     sudo snap install powershell --classic
# fi

# # 5. Docker
# if command -v docker &> /dev/null; then
#     echo "Docker is already installed."
# else
#     sudo snap install docker
#     # Manage Docker as a non-root user
#     sudo groupadd docker
#     sudo usermod -aG docker $USER
# fi

#!/bin/bash

install_package() {
    local package_name=$1
    local install_command=$2
    local check_command=$3

    if eval "$check_command"; then
        echo "$package_name is already installed."
    else
        eval "$install_command"
    fi
}

# 1. OpenSSH Server
install_package "OpenSSH Server" "sudo apt install openssh-server -y" "dpkg -l | grep -q openssh-server"

# 2. net-tools
install_package "Net Tools" "sudo apt install net-tools -y" "dpkg -l | grep -q net-tools"

# 3. Neovim
install_package "Neovim" "sudo snap install nvim --classic" "command -v nvim &> /dev/null"

# 4. PowerShell
install_package "PowerShell" "sudo snap install powershell --classic" "command -v powershell &> /dev/null"

# 5. Docker
if command -v docker &> /dev/null; then
    echo "Docker is already installed."
else
    sudo snap install docker
    # Manage Docker as a non-root user
    sudo groupadd docker
    sudo usermod -aG docker $USER
fi