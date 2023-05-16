#!/bin/bash

# Update the package list
sudo pacman -Syyu --noconfirm

sudo pacman -S neovim --noconfirm

mkdir -p ~/.local/share/nvim/site/pack/packer/start

git clone https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -rf nvim ~/.config/nvim/

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
