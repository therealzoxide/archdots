# ~/.bashrc
[[ $- == *i* ]] &&
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source -- "$HOME/.local/share/blesh/ble.sh" --attach=none --rcfile "$HOME/.blerc"
macchina

alias fucking="sudo"
alias yay="paru"
alias la="eza -al --color=always --group-directories-first"
alias ls="eza -l --color=always --group-directories-first"
alias lt="eza --tree --color=always"
alias l.="eza -a | grep -e '^\.'"
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."


[[ -f ~/.bash_prompt ]] && source ~/.bash_prompt

[[ ! ${BLE_VERSION-} ]] || ble-attach
