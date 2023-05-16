ln -sf /usr/share/zoneinfo/Canada/Eastern /etc/localtime
hwclock --systohc

locale-gen
cp locale.conf /etc/
cp hostname /etc/
mkinitcpio -P
pacman -S grub efibootmgr --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
