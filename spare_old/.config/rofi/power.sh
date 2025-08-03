#!/bin/bash
    
case "$(echo -e "Shutdown\nReboot\nLogout\nSuspend\nLock" | rofi -dmenu -theme ~/.config/rofi/themes/power.rasi -location 0 -xoffset 0 -yoffset 0 \
	"Power:" -l 5)" in
		Shutdown) exec systemctl poweroff;;
		Reboot) exec systemctl reboot;;
		Logout) exec loginctl terminate-session ${XDG_SESSION_ID-};;
		Suspend) exec systemctl suspend;;
		Lock) exec hyprlock;;
esac
