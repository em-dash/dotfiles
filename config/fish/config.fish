if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls "ls --color=auto"
alias la "ls -A"
alias ll "ls -lAh"
alias lsl "ls -lAh | less"
alias odx "od -t x1z"
alias asdf "setxkbmap us colemak"
alias quit "exit"
alias qq "clang -Wall -std=c99 -pedantic"
alias grep "grep --color=auto"

set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_use_informative_chars 1
