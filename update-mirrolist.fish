function update-mirrolist
curl -s "https://archlinux.org/mirrorlist/?country=US&protocol=http&protocol=https&ip_version=4&use_mirror_status=on" | awk '/^#S/{  count++; if (count<=5) gsub("#", "", $0); print  }' | sudo tee /etc/pacman.d/mirrorlist
end
