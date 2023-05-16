#!/bin/bash

mode=$1
device=$2

if [[ "$mode" = "download" ]]; then
    cp -rf ./eww/ /home/umi/.config/
    cp -rf ./nvim/ /home/umi/.config/
    cp -rf ./spicetify/ /home/umi/.config/
    cp -rf ./neofetch/ /home/umi/.config/
    cp -rf ./BetterDiscord/ /home/umi/.config/
elif [[ "$mode" = "upload" ]]; then
    cp -rf /home/umi/.config/eww/ ./
    cp -rf /home/umi/.config/nvim/ ./
    cp -rf /home/umi/.config/spicetify/ ./
    cp -rf /home/umi/.config/neofetch/ ./
    cp -rf /home/umi/.config/BetterDiscord/ ./
fi

if [[ "$device" = "desktop" ]]; then
    ./desktop/config.sh $mode
elif [[ "$device" = "laptop" ]]; then
    ./laptop/config.sh $mode
fi
