#!/bin/bash

su umi << "EOF"
mkdir ~/.config/nvim/
mkdir -p /home/umi/.local/share/nvim/site/pack/packer/start

git clone https://github.com/wbthomason/packer.nvim \
    /home/umi/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -rf nvim /home/umi/.config/nvim/

nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
EOF
