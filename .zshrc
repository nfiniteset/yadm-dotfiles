# ZSH-specific interactive shell configuration
# This file is sourced for interactive shells
# Use this for shell behavior, aliases, functions, and completions only - NO PATH modifications

# ============================================================================
# Source shared setup
# ============================================================================
[[ -f "$HOME/.shared_rc" ]] && source "$HOME/.shared_rc"

# ============================================================================
# Completions
# ============================================================================

# Case insensitive autocomplete with caching
autoload -Uz +X compinit

# Check cache once per day for better performance
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  compinit
else
  compinit -C
fi

# Case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# ============================================================================
# Prompt Theme & Styling
# ============================================================================

# Initialize Starship prompt
eval "$(starship init zsh)"

# Load syntax highlighting if available (loaded last for better performance)
[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ============================================================================
# Machine-Specific Overrides
# ============================================================================

[[ -f "$HOME/.shared_rc.local" ]] && source "$HOME/.shared_rc.local"
[[ -f "$HOME/.zshrc.local" ]] && source "$HOME/.zshrc.local"
