if status is-interactive
    set fish_greeting
    macchina

alias yay='paru'
alias la='eza -al --color=always --group-directories-first'
alias ls='eza -l --color=always --group-directories-first'
alias lt='eza --tree --color=always'
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'

end

set -gx EDITOR nvim
