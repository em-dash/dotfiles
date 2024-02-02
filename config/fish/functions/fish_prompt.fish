function fish_prompt
    if not test -z $short_prompt
        printf (string join '' -- (set_color brblack) '¿ ' (set_color normal))
    else
        set -g fish_prompt_pwd_dir_length 0
        set -f dir_list (string split / (prompt_pwd))

        set -f color_list red yellow bryellow brgreen cyan brblue brmagenta

        if test -z $__prompt_color_index
            set -g __prompt_color_index 1
        end

        set -f prompt_path ''

        for item in $dir_list
            set -f prompt_path (string join '' $prompt_path (set_color $color_list[$__prompt_color_index]) $item (set_color brblack) '/')
            set -g __prompt_color_index (string join '' $__prompt_color_index '%7+1' | bc)
        end

        set -f prompt_path (string trim --right --chars=/ $prompt_path)

        printf (string join '' -- '\n' (whoami) (set_color brblack) '@' (set_color normal) (prompt_hostname) ' ' $prompt_path '\n¿ ' (set_color normal))
    end
end
