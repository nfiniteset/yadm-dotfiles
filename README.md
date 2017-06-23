# yadm
Dotfiles for setting up a new machine and syncronizing configuration between machines.

### First time setup

Install homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install yadm
```bash
brew install yadm
```

Install these dotfiles
```bash
yadm clone https://github.com/nfiniteset/yadm.git
yadm status
```

Install homebrew-bundle
```bash
brew tap Homebrew/bundle
```

Install applications
```bash
brew bundle
```
