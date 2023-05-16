#!/bin/bash

pacman -S --needed --noconfirm - < pkglist.txt

mkdir /home/umi/srcpkgs/
chown -R umi:umi /home/umi/srcpkgs/
./yay.sh

yay -Syyu --needed --noconfirm - < aurlist.txt

./eww.sh
./spicetify.sh
