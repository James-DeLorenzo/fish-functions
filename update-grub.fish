function update-grub
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
end
