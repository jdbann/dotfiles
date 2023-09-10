# Setup homebrew
if test -f /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
else if test -f /usr/local/homebrew/bin/brew
    eval (/usr/local/homebrew/bin/brew shellenv)
end

# Setup rtx
eval "$(rtx activate fish)"
