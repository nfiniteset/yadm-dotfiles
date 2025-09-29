source .bash_local

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


## -- start Asana stuff:
# Ensure bash picks up our asana-specific configuration from .profile
source ~/.profile
. "$HOME/.cargo/env"
## -- end Asana stuff