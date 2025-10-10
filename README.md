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

## Configuration Details

### Machine-Specific Overrides

To customize settings for a specific machine without committing them to git:

1. Copy the example file:
   ```bash
   cp .shared_profile.local.example .shared_profile.local
   ```

2. Edit the `.local` file with your machine-specific settings
3. The `.local` files are automatically gitignored and will never be committed

**Example use cases for `.local` files:**
- Work-specific email addresses and credentials
- Machine-specific paths
- API keys and tokens
- Custom environment variables
