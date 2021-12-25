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
# - firefox
# - neofetch
# - git
sudo pacman -S base-devel linux-headers alsa-utils xf86-video-amdgpu xorg-server xorg-xinit firefox neofetch git 
sudo pamcan -Syu

# Make AUR directory
mkdir $HOME/Scaricati
cd $HOME/Scaricati
mkdir AUR
cd AUR

# Install paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# Install Rust from rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
export PATH="$PATH:$HOME/.cargo/bin"
