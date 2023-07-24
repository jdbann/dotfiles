if status is-interactive
    # Enable vi key bindings
    fish_vi_key_bindings

    # Setup homebrew
    eval (/opt/homebrew/bin/brew shellenv fish)

    # Setup rtx
    eval "$(rtx activate fish)"
end
