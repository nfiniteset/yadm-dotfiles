export CODEZ=~/sandbox/asana
# If-else structure
if [ -d "$CODEZ" ]; then
    # Running on work Mac
    export ASANA_GIT_EMAIL=seandurham@asana.com
    export MAC_CONFIGURE_VERSION=2
    source $CODEZ/admin/mac.bashrc
    export PS1="[$PS_GIT_BRANCH] \w: "
    . "$HOME/.cargo/env"
fi
