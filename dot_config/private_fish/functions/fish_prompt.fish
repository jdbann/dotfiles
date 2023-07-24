function fish_prompt -d "Write out the prompt"
    set -l last_status $status

    set -g __fish_git_prompt_show_informative_status true
    set -g __fish_git_prompt_showdirtystate true
    set -g __fish_git_prompt_showuntrackedfiles true
    set -g __fish_git_prompt_showupstream auto
    set -g __fish_git_prompt_showcolorhints true

    set -q fish_color_status
    or set -g fish_color_status --background=red white

    set -l prompt_status
    if test ! $last_status -eq 0
        set prompt_status (set_color $fish_color_status) "✖ " (set_color normal)
    end

    echo -n -s \n (prompt_pwd) (fish_vcs_prompt) \n $prompt_status "> "
end
