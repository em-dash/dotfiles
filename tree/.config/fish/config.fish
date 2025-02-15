if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test $TERM = "*ghostty"
    set -gx COLORTERM truecolor
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

set -gx GITHUBMAIL 33614480+em-dash@users.noreply.github.com
