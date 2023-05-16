#!/bin/bash

cd /home/umi/srcpkgs/
git clone https://aur.archlinux.org/yay.git
cd yay
su - umi -c "makepkg -si --noconfirm"
cd /arch
