#!/bin/sh

cd ~

# ============================= INSTALLATION ================================= #
# Apt
sudo apt -y install i3 vim alacritty git feh curl bat flameshot gcc g++ clang cmake pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 ripgrep

# Clone config repo
git clone https://github.com/Mthdqe/config.git

# ================================= SETUP ==================================== #
# Wallpaper
cp ~/config/arcane.png ~/Pictures/arcane.png

# Git
git config --global core.editor "vim"

# i3
mkdir ~/.config/i3
cp ~/config/i3/config ~/.config/i3/

# Bash
cp ~/config/bashrc ~/.bashrc

# Cargo
curl https://sh.rustup.rs -sSf | sh -s -- -y
. ~/.cargo/env

# Alacritty
cargo install alacritty
mkdir ~/.config/alacritty
cp ~/config/alacritty.toml ~/.config/alacritty/

# JetBrainsMono font
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
unzip -d JetBrainsMono JetBrainsMono.zip
sudo cp -r JetBrainsMono /usr/local/share/fonts/
rm -r JetBrainsMono JetBrainsMono.zip

# Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install "v25.7"
nvm use "v25.7"

# NeoVim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -xzvf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
sudo mv nvim-linux-x86_64 /opt
cargo install --locked tree-sitter-cli
cp -r ~/config/nvim ~/.config

# Go
curl -LO https://go.dev/dl/go1.26.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.26.2.linux-amd64.tar.gz
rm go1.26.2.linux-amd64.tar.gz

# Docker
curl -fsSL https://get.docker.com | sh
sudo groupadd docker
sudo usermod -aG docker $USER

# Clean unused directories
rmdir Desktop Music Public Templates Videos

# Scripts
cp -r ~/config/scripts ~/scripts

