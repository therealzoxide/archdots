#!/bin/bash

echo "This will install all core packages and fonts, and ask if you want utilities."
echo -e "\nThis is NOT an unattended installation or a full setup script"
echo -e "\nStay at your computer for sudo and confirmations, be prepared for minor configuration afterwards"
read -rp "Start? (yes/no): " confirm
if [[ "$confirm" != "yes" ]]; then
    echo "ok"
    exit 1
fi

if ! command -v git &>/dev/null; then
    echo "Installing git"
    sudo pacman -S --noconfirm --needed git
fi

if ! command -v paru &>/dev/null; then
    echo "Installing paru"
    sudo pacman -S --noconfirm --needed base-devel
    git clone https://aur.archlinux.org/paru.git && cd paru
    makepkg -si --noconfirm
    cd ..
    rm -rf ./paru
fi

CORE_PKGS=(
    hyprland
    foot
    waybar
    bemenu
    j4-dmenu-desktop
    thunar
    polkit-gnome
    xdg-desktop-portal-hyprland
    wl-clipboard
)

UTILITY_PKGS=(
    udiskie
    gvfs
    gvfs-mtp
    fish
    eza
    neovim
    xarchiver
    p7zip
    nwg-look
    hyprlock
    hypridle
    hyprpaper
    greetd
    greetd-tuigreet
    tumbler
    mako
)

CONVENIENCE_PKGS=(
	clipse
	impala
	grim
	slurp
	pulsemixer
	hyprshot
	bottom
	macchina
	gromit-mpx
)

FONT_PKGS=(
    ttf-iawriter-nerd
    ttf-sarasa-gothic
    noto-fonts
    noto-fonts-emoji
    noto-fonts-extra
)

echo -e "\nInstalling core..."
paru -S --noconfirm --needed "${CORE_PKGS[@]}"

echo -e "\nIf you do not install the utils your system will function but will be nearly featureless."
echo "Core only includes the bare minimum to log into hyprland, copy and paste, and launch apps and use a terminal."
read -rp "Install utils? (yes/no): " util_confirm

if [[ "$util_confirm" == "yes" ]]; then
    echo -e "\nInstalling utils..."
    paru -S --noconfirm --needed "${UTILITY_PKGS[@]}"
else
    echo -e "\nRead utility section on github if you're missing basic features."
fi

echo -e "\nAdditional utils that are less integral to basic function and can be swapped out with different preferences."
echo "These are the utils that I use, and some are integrated into other config files."
read -rp "Install additional utils? (yes/no): " convenience_confirm

if [[ "$convenience_confirm" == "yes" ]]; then
    echo -e "\nInstalling utils..."
    paru -S --noconfirm --needed "${CONVENIENCE_PKGS[@]}"
else
    echo -e "\nRemember to change/remove integrations if anything doesn't work."
fi

echo -e "\nInstalling fonts..."
paru -S --noconfirm --needed "${FONT_PKGS[@]}"

echo -e "\nThis script ONLY installed files, it configures nothing and only exists because I kept missing things I needed to install."
echo -e "\nFinish first time setup such as configuring pacman, paru, and greetd and copying config files from the repo. Enable any services you need enabled."
echo -e "\nReboot once you're done"
echo -e "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠤⠒⠒⠒⠒⠒⠠⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⡞⡽⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢯⢳⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣔⣻⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣿⠢⡀⠀⠀⠀⠀
⠀⠀⢀⣾⣿⣶⡆⠀⠀⢐⡄⠀⠀⠀⠀⠐⠳⡀⠀⢸⣇⣧⡐⠀⠀⠀⠀⠀⠀
⠀⢠⠏⠀⢹⣿⡇⠀⠀⠇⢀⢂⠀⠀⠀⡃⢀⠀⠘⣦⢸⡿⡟⠋⠁⡀⠀⠀⠀
⠀⡋⠀⠀⠀⢹⣷⡀⡸⠀⠻⠀⠈⠒⠤⠃⠿⠀⢀⠻⣼⡇⠀⠀⠀⠀⢂⠀⠀
⢀⠀⠀⠀⠀⠈⣿⠱⣿⣅⠀⠀⠸⣉⡹⠀⠀⢀⠞⡼⠀⣿⡀⠀⠀⠀⠀⠐⠀
⠀⠀⠀⠀⠀⠀⣿⠀⢣⠀⠍⢶⣦⠤⢤⣖⠾⠠⣀⠇⠀⢹⡇⠀⠀⠀⠀⠀⠡
⡁⠀⠀⠀⢀⡴⣏⣴⡑⣀⣴⠂⢸⠤⠼⡀⠱⡤⡨⢳⣦⣸⣷⠀⠀⠀⠀⠀⢡
⠅⠀⠀⣴⡟⢷⣾⣿⡷⠳⠃⢠⠃⠀⠀⢣⣀⠡⡙⣿⣿⣿⠛⣦⡀⠀⠀⠀⢰
⠂⠀⣼⡯⠃⠢⠽⠋⡴⠧⣀⡣⡀⠀⠀⢈⢄⣭⣇⠘⠿⠕⠥⠜⠻⠦⣀⠀⡇
⠀⠉⠁⠀⠀⠀⡊⠉⢙⣿⡾⡶⠾⠶⣾⢕⢿⠟⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠉
⠀⠀⠀⠀⠀⠀⠐⢀⠼⠃⠀⠉⠉⠀⠂⠀⠈⠣⠄⠂"
