#!/bin/bash

mode=$1

if [[ "$mode" = "download" ]]; then
    cp -rf ./hypr/ /home/umi/.config/
    cp -rf ./alacritty/ /home/umi/.config/
elif [[ "$mode" = "upload" ]]; then
    cp -rf /home/umi/.config/alacritty/ ./
    cp -rf /home/umi/.config/hypr/ ./
fi
