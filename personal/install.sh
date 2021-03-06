#!/bin/bash

# ##################### DON'T USE THIS, IT'S IN WIP #####################

# MANUALLY CHECK THAT YOU HAVE INTERNET ACCESS
# *use NetworkManager*

# Install
# - base-devel
# - kernel headers
# - ALSA
# - GPU drivers
# - Xorg
# - xinit
# - XRandR
# - Git
sudo pacman -S base-devel linux-headers alsa-utils xf86-video-amdgpu xorg-server xorg-xinit xorg-xrandr git
sudo pamcan -Syu

# Make AUR directory
mkdir $HOME/Downloads
cd $HOME/Downloads
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
# - man
# - SDDM
# - ripgrep
# - sct
# - htop
# - btop
# - picom (Jonaburg fork)
# - pip3
# - unzip
# - unrar
paru -S firefox neofetch neovim kitty zsh bat man sddm ripgrep sct htop btop picom-jonaburg-git python-pip unzip unrar
paru -Syu

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Enable SDDM
sudo systemctl enable sddm.service

# Create fonts folder
mkdir $HOME/.fonts

# Add $HOME/.local/bin to PATH for some pip packages
export PATH='$PATH:$HOME/.local/bin'
