#!/bin/bash

mode=$1
device=$2

su umi << "EOF"
if [[ "$mode" = "download" ]]; then
    cp -rf ./eww/ /home/umi/.config/
    cp -rf ./nvim/ /home/umi/.config/
    cp -rf ./spicetify/Themes/ /home/umi/.config/spicetify/
    cp -rf ./neofetch/ /home/umi/.config/
    cp -rf ./BetterDiscord/ /home/umi/.config/
    spicetify apply
    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
elif [[ "$mode" = "upload" ]]; then
    cp -rf /home/umi/.config/eww/ ./
    cp -rf /home/umi/.config/nvim/ ./
    cp -rf /home/umi/.config/spicetify/Themes/ ./spicetify/
    cp -rf /home/umi/.config/neofetch/ ./
    cp -rf /home/umi/.config/BetterDiscord/ ./
fi

if [[ "$device" = "desktop" ]]; then
    ./desktop/config.sh $mode
elif [[ "$device" = "laptop" ]]; then
    ./laptop/config.sh $mode
fi
EOF
