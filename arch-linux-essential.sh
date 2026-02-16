echo "----------------------------"
echo "Installing Packages Now"
echo "----------------------------"

sudo pacman -Sy wayland \
                qt6-wayland \
                qt5-wayland \
                xdg-desktop-portal-hyprland \
                hyprland \
                kitty \
                dolphin \
                rofi \
                waybar \
                waylock \
                hyprpaper \
                swaync \
                grim \
                slurp \
                cliphist \
                fastfetch \
                sddm \
                pamixer \
                nm-connection-editor \
		docker \
                ufw

# Install yay and some necessay yay
# cd /tmp

# sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
# yay -S neohtop

# Enable some packages
echo "----------------------------"
echo "Enabling Packages Now"
echo "----------------------------"
sudo systemctl enable docker
sudo systemctl enable sddm
sudo systemctl enable ufw

# Docker post installation
echo "----------------------------"
echo "Post Docker Installation"
echo "----------------------------"
sudo usermod -aG docker $USER

# Ohmybash
echo "----------------------------"
echo "Installing OhMyBash Now"
echo "----------------------------"
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" && exit
sudo sed -i 's/^OSH_THEME=.*/OSH_THEME="modern"/' ~/.bashrc

echo "----------------------------"
echo "Set up successfully!!"
echo "----------------------------"