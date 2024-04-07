#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.profile ]; then
    source ~/.profile
fi

if [[ $TERM == *ghostty ]] ; then
    export COLORTERM=truecolor
fi

if [ $(command -v fish) ] ; then
    exec fish
fi

export PS1='(pas de poisson)$ '
