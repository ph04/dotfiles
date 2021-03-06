#!/bin/bash

# Install Spaceship for Zsh
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
# MANUAL 
# set ZSH_THEME="spaceship" in .zshrc
# restart the terminal

# Install Zsh Autosuggestions for Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# MANUAL
# add "zsh-autosuggestions" to the plugins (every plugin in a different line)
# restart the terminal
paru -Syu

# Fix keyboard layout
localectl set-x11-keymap it

# Add a swapfile, based on how many GB of RAM you have
