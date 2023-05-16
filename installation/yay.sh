#!/bin/bash

cd /home/umi/srcpkgs/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd /arch
