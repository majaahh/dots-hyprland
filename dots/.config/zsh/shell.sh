#!/bin/bash
# Monet
if [[ "$SSH" != "true" ]] && [[ -f "$HOME/.local/state/quickshell/user/generated/terminal/sequences.txt" ]]; then
    cat "$HOME/.local/state/quickshell/user/generated/terminal/sequences.txt"
fi

# Oh My Zsh
plugins=(
    "git"
    "zsh-completions"
    "zsh-history-substring-search"
    "zsh-syntax-highlighting"
)

source "$ZSH/oh-my-zsh.sh"

# Oh My Posh
eval "$(oh-my-posh init zsh --config "$HOME/.config/ohmyposh/EDM115-newline.omp.json")"
