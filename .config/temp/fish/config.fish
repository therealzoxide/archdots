if status is-interactive
    set fish_greeting
    fastfetch
end

alias yay='paru'
alias ls='eza -al --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aT --color=always --group-directories-first'
alias l.="eza -a | grep -e '^\.'"
alias untar='tar -zxvf'
alias tarnow='tar -acf'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
