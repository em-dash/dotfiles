fish_add_path /usr/local/sbin
fish_add_path /usr/local/bin
fish_add_path /usr/bin

if test -d ~/.cargo/bin
    fish_add_path ~/.cargo/bin
end
if test -d ~/.cabal/bin
    fish_add_path ~/.cabal/bin
end
if command -vq ruby
    set gem_user_dir (ruby -e 'puts Gem.user_dir')
    if test -d gem_user_dir
        set -gx GEM_HOME gem_user_dir
        fish_add_path (string join '' GEM_HOME /bin)
    end
end

set -gx PYTHONSTARTUP ~/.dotfiles/scripts/friendly.py
set -gx PYTHONPYCACHEPREFIX ~/.cache/python
set -gx LESS R
set -gx GITHUBMAIL '33614480+em-dash@users.noreply.github.com'
set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end
