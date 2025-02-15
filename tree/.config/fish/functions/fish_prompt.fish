function fish_prompt
    set -f _status $status
    if test $_status = 0
        set -f pretty_status (string join '' -- (set_color brblack) $_status (set_color normal))
    else
        set -f pretty_status (string join '' -- (set_color red) $_status (set_color normal))
    end

    if not test -z $short_prompt
        printf (string join '' -- (set_color brblack) '¿ ' (set_color normal))
    else
        set -f dir_list (string split / (prompt_pwd -d 0))
        set -f prompt_path ''

        for item in $dir_list
            set -f prompt_path (string join '' $prompt_path (set_color brmagenta) $item (set_color brblack) '/')
        end

        set -f prompt_path (string trim --right --chars=/ $prompt_path)

        printf (string join '' -- '\n' $pretty_status ' ' (set_color normal) (whoami) (set_color brblack) '@' (set_color normal) (prompt_hostname) ' ' $prompt_path '\n¿ ' (set_color normal))
    end
end
