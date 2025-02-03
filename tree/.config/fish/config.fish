if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path ~/.local/bin

alias ls "ls --color=auto"
alias la "ls -A"
alias ll "ls -lAh"
alias lsl "ls -lAh | less"
alias asdf "setxkbmap us colemak"
alias quit exit
alias grep "grep --color=auto"
alias doasedit "doas helix --config ~/.config/helix/config.toml"
alias tg "grep -rI --exclude-dir .* --exclude .* . -e"

if type -q helix
    alias hx helix
end

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_use_informative_chars 1
