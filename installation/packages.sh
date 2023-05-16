#!/bin/bash

pacman -Syyu --needed --noconfirm - < pkglist.txt

mkdir /home/umi/srcpkgs/
./yay.sh

yay -Syyu --needed --noconfirm - < aurlist.txt

./eww.sh
./spicetify.sh
