# Setup homebrew
set brew_path (which brew)
eval ($brew_path shellenv fish)

# Setup rtx
eval "$(rtx activate fish)"
