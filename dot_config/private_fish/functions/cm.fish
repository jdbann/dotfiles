function cm --wraps chezmoi
    if test -n "$argv"
        chezmoi $argv
    else
        chezmoi status
    end
end
