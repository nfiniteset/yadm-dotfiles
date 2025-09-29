
# Initialize prompt theme
eval "$(starship init zsh)"

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/.mix/escripts:$PATH

source ~/.zprofile

# Press escape to enter VIM command mode
bindkey -v
export KEYTIMEOUT=1

# Nag if yadm has uncommitted changes
[[ $(yadm diff --shortstat 2> /dev/null | tail -n1) != "" ]] && echo "\n\e[1;31myadm has uncommitted changes\e[0m" && yadm status --porcelain

# NVM stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




## -- start Asana stuff:
export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/seandurham/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
## -- end Asana stuff