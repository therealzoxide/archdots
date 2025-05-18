if status is-interactive
    set fish_greeting
    fastfetch

alias yay='paru'
alias la='eza -al --color=always --group-directories-first'
alias ls='eza -l --color=always --group-directories-first'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'

end

set -gx EDITOR nvim
