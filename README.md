# dotfiles

First and foremost these are written for me and the repo is only public because it is easier.  
If you stumble onto this somehow either I shared it with you or I don't know what you're doing here.  
Some config files use absolute paths and as such use my username (ayaya) instead of relative paths, I tried to use those anywhere possible.    
If something is broken, check the config file and make sure it is not using my username.  
If it isn't you're on your own, everything in here works on all of my computers.    
Some of these config files are just edits of defaults, if credit is not listed then credit goes to the author of the program.  
Commenting is inconsistent, it was either left by other people or likely does not exist.  
Do whatever you want with these files, I don't care as long as you let others use them however they want too if you share them.  
    
I listed the programs I use below both for my own sake and for anyone who may find this, alongside explanations of them:  
  
CORE (needed for desktop function, no particular order, DO NOT SKIP ANY OF THESE UNLESS YOU HAVE AN ALTERNATIVE, YOUR SYSTEM WILL NOT WORK):   
hyprland  - hyprland  
kitty  - terminal
waybar - status bar, not absolutely mandatory  
rofi - app launcher and power menu  
thunar - file manager  
polkit-gnome - policy kit agent, needed for authentication   
xdg-desktop-portal-hyprland - the xdg desktop portal for hyprland, mandatory for basic functions such as screenshare and clipboard  
wl-clipboard - its your clipboard  
  
UTILITY (recommended to have but will function without, these are my personal choices):  
udiskie - external disk auto mount  
gvfs - adds trash support  
clipse (aur) - adds clipboard history and management, runs in Kitty  
paru - AUR helper, aliased to "yay" in my fish config  
fish - best shell, works better than zsh  
eza - better ls, aliased to "ls, ll la" in my fish config  
nvim - text editor, vim with better plugin ecosystem  
xarchiver - allows you to view files inside archives  (can use fileroller instead if preferred)  
7zip - most versatile archiver  
nm-connection-editor - visual way to connect to wifi, NMTUI for TUI (nmtui is worse)  
pulsemixer - TUI volume mixer, pavucontrol for GUI (pavucontrol has a bit more function)   
grim - screenshots for wayland, cant see the screen without slurp  
slurp - selects regions and prints to stdout, allows grim to screenshot  
hyprshot - wrapper script for grim + slurp, makes life easier  
nwg-look - applies themes, icons, and fonts to GTK programs, default settings will be used without  
bottom - resource monitor  
fastfetch - ascii art and system specs/details, looks pretty on terminal startup mainly but comes with a few helpful things to see  
  
FONTS:  
ttf-iawriter-nerd
noto-fonts  
noto-fonts-emoji  
noto-fonts-cjk  
noto-fonts-extra  
  
Use Vesktop or Webcord instead of the official discord app unless you need the keybinds.  
They are both wrappers for the website and work much better on Wayland, Vesktop comes with Vencord built in so it will be slightly less stable.  
If you use a chromium browser remember to go to chrome://flags in the url bar, search "ozone", and set the option in the result to "Wayland", otherwise it may default to using Xorg and cause issues.  
  
CONFIGURE THE FOLLOWING:  
edit computerSpecific.conf to fit the current PCs needs (hypr config folder)  
there are scripts in the ~/.config/hypr and ~/.config/waybar directories, make them executable.  
edit config.jsonc to display workspaces on the correct monitors, they show on all by default (waybar config folder)  
configure pacman and paru to your liking.  
Add the following to /etc/greetd/config.toml:  
  
``[terminal]``  
``vt = 1`` 
  
``[initial_session]``  
``command = "Hyprland"``  
``user = "(yourname)"``
  
``[default_session]``    
``command = "tuigreet -r --cmd Hyprland"``   
``user = "greeter"``  
