#!/bin/sh

cd ~

# ============================= INSTALLATION ================================= #
# Apt
sudo apt install i3 vim kitty git feh curl zsh bat

# Clone config repo
git clone https://github.com/Mthdqe/config.git

# ================================= SETUP ==================================== #
# Wallpaper
cp ~/config/gojo.jpg ~/Pictures/gojo.jpg

# Git
git config --global core.editor "vim"

# i3
cp ~/config/i3/config ~/.config/i3/

# Zsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cd ~/.oh-my-zsh/plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting

cd ~

cp ~/config/zshrc ~/.zshrc

# Kitty
cp ~/config/kitty.conf ~/.config/kitty/

# Vim
mkdir -p ~/.vim/colors
cp ~/config/vimrc ~/.vimrc
cp ~/config/monokai.vim ~/.vim/colors/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimcd ~

vim +'PlugInstall --sync' +qa


