#!/bin/bash

# Change the default directory to user's home directory
if ! grep -Fxq "cd ~" ~/.bashrc; then
    cat << EOF >> ~/.bashrc

# Change the default directory to user's home directory
cd ~
EOF
fi

# Add aliases
cat << EOF > ~/.bash_aliases
# Aliases
# - ~/.dotfiles
alias .dotfiles='cd /etc/ubuntu/.dotfiles'

# - cd
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# - clear
alias c='clear'
alias cls='clear'

# - sudo
alias su='sudo -i'
alias root='sudo -i'

# - reboot/poweroff/halt/shutdown
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias halt='sudo halt'
alias shutdown='sudo shutdown'

# - update (in one command)
alias update='sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt clean -y && sudo apt autoclean -y'
EOF
