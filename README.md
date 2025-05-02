# dotfiles

REMINDER TO MYSELF FOR WHAT APPS I USE    
INSTALL THE FOLLOWING FIRST:   
paru  
fish  
kitty  
hyprland  
Eza   
nvim  
waybar  
rofi  
wl-clipboard  
clipse (aur)  
udiskie   
gvfs  
pulsemixer  
xarchiver  
7zip   
noto-fonts   
noto-fonts-emoji  
noto-fonts-cjk  
noto-fonts-extra    
hyprpolkitagent  
hyprlock  
hypridle  
vivaldi  
nm-connection-editor  
greetd  
greetd-tuigreet    
  
NEXT YOU MAY INSTALL:  
bottom  
fastfetch  
hyprpaper  
grim  
slurp  
hyprshot   
vestktop   
youtube-music-bin (aur)  
nwg-look  

CONFIGURE THE FOLLOWING:  
edit computerSpecific.conf to fit the current PCs needs (hypr config folder)  
edit config.jsonc to display workspaces on the correct monitors, they show on all by default (waybar config folder)  
set ILoveCandy, Color, and parallel downloads in pacman.conf, set bottomup and removemake in paru.conf, add the following to /etc/greetd/config.toml:  
``[terminal]``  
``vt = 1``  
  
``[initial_session]``  
``command = "Hyprland"``  
``user = "ayaya"``
  
``[default_session]``    
``command = "tuigreet -r --cmd Hyprland"``   
``user = "greeter"``  
