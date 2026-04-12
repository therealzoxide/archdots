# dotfiles
  
Please read before using if you somehow found this, the following is a package list intended for Arch  
this also includes a few old configs I didnt want to completely delete including sway and hyprland, feel free to use, future updates to hyprland may break them  
The following software is used in this setup:  
  
## CORE  
#### (Mandatory for basic function):  
niri - scrolling window manager  
xdg-desktop-portal-gnome - used for screenshare in niri  
xdg-desktop-portal-gtk - used for filepicker in niri  
foot - simplest wayland terminal  
wl-clipboard - its your clipboard  
xwayland-satellite - niri does not have native xwayland support, you need this to run x11 apps  
noctalia-qs  
brightnessctl  
git  
imagemagick  
python  
  
## UTILITY  
#### (Recommended to have but will function without):  
udiskie - external disk auto mount  
gvfs - adds trash support  
gvfs-mtp - compatibility with android file system  
ddcutil  
  
## UTILITY PREFERENCE  
#### (Easier to replace utilities)  
paru - AUR helper, aliased to "yay" in my bash config (also consider aurutils)  
eza - better ls, ~/.bashrc will need edited if you do not use this  
clipse (aur) - adds clipboard history and management, runs in Kitty  
xarchiver - allows you to view files inside archives  (can use fileroller instead if preferred)  
7zip - most versatile archiver  
nvim - text editor, vim but better (consider doom emacs too)  
nwg-look - applies themes, icons, and fonts to GTK programs, default settings will be used without  
bottom - resource monitor  
macchina - ascii art and system specs/details, looks pretty on terminal startup mainly but comes with a few helpful things to see  
cliphist  
cava  
wlsunset  
xdg-desktop-portal  
python3  
evolution-data-server  
  
## FONTS:  
ttf-iawriter-nerd - main font used by me  
ttf-sarasa-gothic - noto-fonts-cjk shifts the entire waybar when paired with english text, this font doesnt  
noto-fonts - required by many programs anyway   
noto-fonts-emoji - so emojis work  
noto-fonts-extra - nerd font wasnt covering everything, this ensured no missing characters   
  
## INFORMATION
Use Vesktop or Webcord instead of the official discord app unless you need the keybinds.  
They are both wrappers for the website and work much better on Wayland, Vesktop comes with Vencord built in so it will be slightly less stable.  
If you use a chromium browser remember to go to chrome://flags in the url bar, search "ozone", and set the option in the result to "Wayland", otherwise it may default to using Xorg and cause issues.  
Hyprland configs are unmaintained forever  
nvim configs will change to using the native plugin manager as soon as it reaches the stable channel  
  
This repo also comes with config files for fish, swaybg, swaylock, swayidle, fuzzel, waybar, starship, and rofi, I no longer use these but have no reason to drop the files so they will for now  
  
## CONFIGURE THE FOLLOWING:  

there are scripts in the ~/.scripts directory, make them executable.  
configure pacman and paru to your liking.  

