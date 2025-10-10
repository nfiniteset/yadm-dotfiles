# .zprofile - Login shell environment setup
# This file is sourced for login shells
# Use this for PATH and environment variables

# ============================================================================
# Source shared setup
# ============================================================================
[[ -f "$HOME/.shared_profile" ]] && source "$HOME/.shared_profile"

# ============================================================================
# Source interactive shell configuration
# ============================================================================
[[ -f "$HOME/.zshrc" ]] && source "$HOME/.zshrc"
