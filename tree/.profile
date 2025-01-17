# vim: set ft=zsh:set textwidth=80

if [ -f /etc/profile ] ; then 
    source /etc/profile
fi

PATH=${PATH}:~/.local/bin
if [ -d ~/.cargo ] ; then
    PATH=${PATH}:~/.cargo/bin
fi
if [ -d ~/.cabal ] ; then
    PATH=${PATH}:~/.cabal/bin
fi
if [ $(command -v ruby) ] ; then
    export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
    PATH=$PATH:$GEM_HOME/bin
fi

export PATH

if [ $(command -v hx) ] ; then
    export EDITOR='hx'
elif [ $(command -v helix) ] ; then
    export EDITOR='helix'
else
    export EDITOR=vi
fi

if [ $(command -v guix) ] ; then
    export GUIX_LOCPATH="/home/sav/.guix-profile/lib/locale"
fi

export GITHUBMAIL='33614480+em-dash@users.noreply.github.com'

export LESS='R'

export PYTHONSTARTUP=~/.dotfiles/scripts/friendly.py
export PYTHONPYCACHEPREFIX=~/.cache/python

export GNUPGHOME=~/.gnupg


# this is from coreutils
# idk if there is a sensible way to make this always work
# i'm gonna at least test if dircolors exists
if [ $(command -v dircolors) ] ; then
    eval $(dircolors ~/.lscolors)
fi

