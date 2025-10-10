## Shell Configuration Pattern

### Configuration File Types

**Login shells** initialize once per session:
- Files: `.bash_profile`, `.zprofile`, `.zlogin`
- Purpose: Session environment (PATH, environment variables)
- Inheritance: Settings propagate to all child processes

**Non-login interactive shells** initialize per terminal:
- Files: `.bashrc`, `.zshrc`
- Purpose: Shell behavior (aliases, functions, prompt, keybindings)
- Scope: Settings apply only to that shell instance

### Implementation Pattern

Login shells set up the environment once, then source the interactive configuration:

```
Login shell (.bash_profile / .zprofile)
  ├─ Set PATH and environment variables
  ├─ Load machine-specific overrides (e.g., .bash_profile.local)
  └─ Source .bashrc / .zshrc

Interactive shell (.bashrc / .zshrc)
  ├─ Configure aliases, functions, prompt
  ├─ Lazy-load completions and tool integrations
  └─ Load machine-specific overrides (e.g., .bashrc.local)
```

### How This Follows Our Principles

**Performance**: Expensive operations (PATH modification, service startup) run once per login, not per shell

**Idempotency**: Sourcing configuration files repeatedly produces consistent results

**Portability**: Local override files (`.local` suffix) allow machine-specific customization without modifying tracked files

**Maintainability**: Clear separation of concerns—environment setup vs. shell behavior

**Simplicity**: Standard Unix pattern that works consistently across systems

## Dotfiles Management Principles

### Portability
- **Cross-platform compatibility**: Use conditional logic for OS-specific configurations
- **Machine-specific overrides**: Support local customizations without modifying tracked files
- **Minimal dependencies**: Assume only standard tools; gracefully handle missing optional tools

### Security
- **Never commit secrets**: Use `.gitignore` for files containing credentials, tokens, or keys
- **Environment-based secrets**: Load sensitive data from environment variables or external secret managers
- **Safe defaults**: Configurations should be safe to share publicly

### Maintainability
- **Modular organization**: Group related configurations by tool or purpose
- **Document complex logic**: Add comments explaining non-obvious configurations
- **Version control everything**: Track all changes with meaningful commit messages
- **Regular cleanup**: Remove obsolete configurations and unused aliases

### Idempotency
- **Safe to run repeatedly**: Scripts and configurations should produce the same result when run multiple times
- **Check before modify**: Test for existing configurations before adding duplicates
- **Atomic operations**: Changes should either complete fully or fail cleanly

### Performance
- **Lazy loading**: Defer expensive operations until needed (e.g., load tool completions on-demand)
- **Startup optimization**: Profile shell startup time and optimize bottlenecks
- **Conditional execution**: Skip setup for tools that aren't installed

### Simplicity
- **Favor clarity over cleverness**: Prefer readable configurations over complex one-liners
- **Minimal customization**: Only override defaults when there's clear benefit
- **Standard conventions**: Follow established patterns for each tool's configuration
