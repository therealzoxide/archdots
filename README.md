# dotfiles

this also includes a few old configs I didnt want to completely delete, feel free to use, future updates to hyprland may break them  
The following software is used in this setup:  
  
CORE (needed for desktop function, no particular order, DO NOT SKIP ANY OF THESE UNLESS YOU HAVE AN ALTERNATIVE, YOUR SYSTEM WILL NOT WORK):   
swayfx - sway with fx  
foot - terminal (used to use kitty but got tired of all text being italic and couldn't figure out why it was like that)   
waybar - status bar, not absolutely mandatory  
bemenu - app launcher and power menu (dmenu alternative)  
j4_dmenu_desktop - lets bemenu search desktop entries instead of path  
thunar - file manager  
polkit-gnome - policy kit agent, needed for authentication   
xdg-desktop-portal-wlr - the xdg desktop portal for wlroots, mandatory for basic functions such as screenshare  
wl-clipboard - its your clipboard  
  
UTILITY (recommended to have but will function without, these are my personal choices):  
udiskie - external disk auto mount  
gvfs - adds trash support  
gvfs-mtp - compatibility with android file system  
clipse (aur) - adds clipboard history and management, runs in Kitty  
paru - AUR helper, aliased to "yay" in my bash config  
eza - better ls, aliased to "ls, ll la" in my bash config  
nvim - text editor, vim with better plugin ecosystem  
xarchiver - allows you to view files inside archives  (can use fileroller instead if preferred)  
7zip - most versatile archiver  
impala - TUI for IWD, doesn't work with networkmanager  
pulsemixer - TUI volume mixer, pavucontrol for GUI (pavucontrol has a bit more function)   
grim - screenshots for wayland, cant see the screen without slurp  
slurp - selects regions and prints to stdout, allows grim to screenshot  
nwg-look - applies themes, icons, and fonts to GTK programs, default settings will be used without  
bottom - resource monitor  
macchina - ascii art and system specs/details, looks pretty on terminal startup mainly but comes with a few helpful things to see  
swaylock - lockscreen  
swayidle - idle daemon  
swaybg - wallpaper manager, integrates into sway config file, use swww for a more powerful and dynamic one  
greetd - greeter daemon, my personal choice  
tumbler - thumbnail plugin for thunar  
mako - notification daemon for Wayland, dunst and swaync can also work if mako isnt preferred  
  
FONTS:  
ttf-iawriter-nerd - main font used by me  
ttf-sarasa-gothic - noto-fonts-cjk shifts the entire waybar when paired with english text, this font doesnt  
noto-fonts - required by many programs anyway   
noto-fonts-emoji - so emojis work  
noto-fonts-extra - nerd font wasnt covering everything, this ensured no missing characters   
  
Use Vesktop or Webcord instead of the official discord app unless you need the keybinds.  
They are both wrappers for the website and work much better on Wayland, Vesktop comes with Vencord built in so it will be slightly less stable.  
If you use a chromium browser remember to go to chrome://flags in the url bar, search "ozone", and set the option in the result to "Wayland", otherwise it may default to using Xorg and cause issues.  
  
This repo also comes with config files for fish, starship, and rofi, I no longer use these but have no reason to drop the files so they will for now  
  
CONFIGURE THE FOLLOWING:  
Run ``:TransparentEnable`` in nvim for transparency  
edit computerSpecific.conf to fit the current PCs needs (sway config folder)  
there are scripts in the ~/.scripts, ~/.config/sway and ~/.config/waybar directories, make them executable.  
configure pacman and paru to your liking.  
Add the following to /etc/greetd/config.toml:  
``[terminal]``  
``vt = 1``  
``[default_session]``  
``command = "sway"``  
``user = "(yourname)"``
