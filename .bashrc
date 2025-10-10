# Bash-specific nteractive shell configuration
# This file is sourced for interactive shells
# Use this for shell behavior, aliases, functions, and completions only - NO PATH modifications

# ============================================================================
# Source shared setup
# ============================================================================
[[ -f "$HOME/.shared_rc" ]] && source "$HOME/.shared_rc"

# ============================================================================
# Machine-Specific Overrides
# ============================================================================
[[ -f "$HOME/.bashrc.local" ]] && source "$HOME/.bashrc.local"
[[ -f "$HOME/.shared_rc.local" ]] && source "$HOME/.shared_rc.local"
