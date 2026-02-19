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
                ufw \
				firefox
echo "Done"

echo "----------------------------"
echo "Installing Fonts for Waybar Now"
echo "----------------------------"

sudo pacman -S --noconfirm ttf-jetbrains-mono-nerd ttf-hack-nerd ttf-ubuntu-mono-nerd
echo "Done"

# Enable some packages
echo "----------------------------"
echo "Enabling Packages Now"
echo "----------------------------"
sudo systemctl enable docker
sudo systemctl enable sddm
sudo systemctl enable ufw
echo "Done"

echo "----------------------------"
echo "Note: Please set up audio by yourself. This was tested in VM and not on a proper PC"
echo "----------------------------"

# Docker post installation
echo "----------------------------"
echo "Post Docker Installation"
echo "----------------------------"
sudo usermod -aG docker $USER
echo "----------------------------"
echo "Note: This Docker rootful by default, please configure it on your own time!"
echo "----------------------------"
echo "Done"

# UFW Minimal Config
echo "----------------------------"
echo "Post UFW Installation"
echo "----------------------------"
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
echo "Done"

# Copy configs from current directory
echo "----------------------------"
echo "Post Pacman Installation, copying .configs over"
echo "----------------------------"
mkdir -p ~/.config
cp -r ./config/* ~/.config/
echo "Done"

# Ohmybash
echo "----------------------------"
echo "Installing OhMyBash Now"
echo "----------------------------"
export OSH_INTERACTIVE=false
curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash
sudo sed -i 's/^OSH_THEME=.*/OSH_THEME="modern"/' ~/.bashrc
source ~/.bashrc
echo "Done"

echo "----------------------------"
echo "Set up successfully!!"
echo "----------------------------"
