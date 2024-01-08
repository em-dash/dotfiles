if [ -f ~/.profile ]; then
    source ~/.profile
fi

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt interactivecomments
# setopt appendhistory extendedglob
unsetopt beep
bindkey -e


zstyle :compinstall filename "~/.zshrc"
autoload -Uz compinit
compinit

# prompt (i would like to apologize to my future self)
# this order is because of base16 colors
# TODO maybe detect if base16 colors is a thing and if not use the regular order
#promptcolors=("1" "9" "3" "2" "6" "4" "5" "14")
promptcolors=("1" "9" "3" "2" "6" "4" "14")
# arrays are 1-indexed?
coloruser=${promptcolors[$(( (RANDOM % 7) + 1 ))]}
#colorhost=${promptcolors[$(( (RANDOM % 8) + 1 ))]}
#while [[ $coloruser == $colorhost ]]
#do # this is quite bad
#    colorhost=${promptcolors[$(( (RANDOM % 8) + 1 ))]}
#done

PROMPT="
%B%F{${coloruser}}%n%f%F{7}@%f%F{5}%m%f %F{15}%~%f%b
%# "
unset promptcolors
unset coloruser
#unset colorhost

# aliases
# if [ ${LS_COLORS?} ] ; then
if (( ${+LS_COLORS} )); then
    alias ls="ls --color=always"
fi
# TODO this is currently only doing color escape codes, figure out if it
# should do all escape codes with "less -r"
# TODO this is probably gonna break on busybox huh
alias la="ls -A"
alias ll="ls -lAh"
alias lsl="ls -lAh | less"
alias odx="od -t x1z"
alias asdf="setxkbmap us colemak"
alias quit="exit"
alias qq="clang -Wall -std=c99 -pedantic"
alias grep="grep --color=auto"

# functions
function reboot-to-windows {
    # WINDOWS_TITLE=`sudo grep -i 'windows' /boot/grub/grub.cfg|cut -d"'" -f2`
    WINDOWS_TITLE=$(grep -i 'windows' /boot/grub/grub.cfg|cut -d"'" -f2)
    sudo grub-reboot "$WINDOWS_TITLE"
    sudo reboot
}

function mkcd {
    mkdir -p $1 && cd $1
}

function printcolors {
    for i in {0..255} ; do
        printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
        if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
            printf "\n";
        fi
    done
}
