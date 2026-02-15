sudo pacman -Sy hyprland \
                kitty \
                waybar \
                hyprpaper \
                swaync \
                grim \
                slurp \
                cliphist \
                rofi \
                fastfetch \
                wayland \ 
                qt6-wayland \ 
                qt5-wayland \
                xdg-desktop-portal-hyprland \
                sddm \

sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
sudo sed -i 's/^OSH_THEME=.*/OSH_THEME="modern"/' ~/.bashrc

sudo systemctl enable sddm
