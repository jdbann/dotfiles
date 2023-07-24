function g --wraps git
    if test -n "$argv"
        git $argv
    else
        git status
    end
end
