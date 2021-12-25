#!/bin/bash

# ##################### DON'T USE THIS, IT'S IN WIP #####################

# MANUALLY CHECK THAT YOU HAVE INTERNET ACCESS
# *use NetworkManager*

# Install
# - base-devel
# - kernel headers
# - alsa
# - gpu drivers
# - xorg
# - git
sudo pacman -S base-devel linux-headers alsa-utils xf86-video-amdgpu xorg-server xorg-xinit git 
sudo pamcan -Syu

# Make AUR directory
mkdir $HOME/Scaricati
cd $HOME/Scaricati
mkdir AUR
cd AUR

# Install paru and Rust
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru
paru -Syu

# Remove Rust from AUR and install Rust from rustup
paru -R rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH="$PATH:$HOME/.cargo/bin"
paru -Syu

# Install
# - Firefox
# - neofetch
# - neovim
# - kitty
# - Zsh
# - bat
# - openbox
# - sddm
paru -S firefox neofetch neovim kitty zsh bat openbox sddm
paru -Syu

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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
