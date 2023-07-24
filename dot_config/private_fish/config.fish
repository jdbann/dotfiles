if status is-interactive
    # Setup homebrew
    eval (/opt/homebrew/bin/brew shellenv fish)

    # Setup rtx
    eval "$(rtx activate fish)"
end
