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

	function starship_transient_prompt_func
	  starship module character
	end
	starship init fish | source
	enable_transience

	function fish_postexec --on-event fish_postexec
	    shell_motivation
	end

end

set -gx EDITOR nvim


