#!/bin/bash

cd /home/umi/srcpkgs/
git clone https://aur.archlinux.org/yay.git
chown -R umi:umi ./yay
su umi << "EOF"
cd yay
makepkg -si --noconfirm
cd /arch
EOF
