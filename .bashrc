# ~/.bashrc
[[ $- == *i* ]] &&
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source -- "$HOME/.local/share/blesh/ble.sh" --attach=none --rcfile "$HOME/.blerc"
macchina

	alias yay='paru'
	alias la='eza -al --color=always --group-directories-first'
	alias ls='eza -l --color=always --group-directories-first'
	alias lt='eza --tree --color=always'
	alias ..='cd ..'
	alias ....='cd ../..'
	alias ......='cd ../../..'


source ~/.scripts/bash/shell_motivation.sh
[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt

[[ ! ${BLE_VERSION-} ]] || ble-attach
