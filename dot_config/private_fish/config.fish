# Setup homebrew
if test -f /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
else if test -f /usr/local/homebrew/bin/brew
    eval (/usr/local/homebrew/bin/brew shellenv)
end

# Setup mise
eval "$(mise activate fish)"

# Set default editors
set -x VISUAL nvim
set -x EDITOR $VISUAL
