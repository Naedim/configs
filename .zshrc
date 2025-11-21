# --- Start: Portable Shell Configuration (.zshrc) ---

# 1. Clean up PATH setup
# DO NOT include the long, hardcoded macOS path here.
# Let the OS/shell initialization files (like /etc/zshrc or .zprofile) handle
# system and standard package manager paths (like Homebrew on Linux/macOS).

# 2. Cross-Platform NVM Setup
# NVM_DIR is portable and uses $HOME
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"       # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# 3. Cross-Platform PNPM Setup
# Uses 'uname' to set the correct PNPM_HOME based on OS.
if [[ "$(uname)" == "Darwin" ]]; then
  # macOS-specific path (uses $HOME for portability between users)
  export PNPM_HOME="$HOME/Library/pnpm"
elif [[ "$(uname)" == "Linux" ]]; then
  # Linux/WSL-specific path
  export PNPM_HOME="$HOME/.local/share/pnpm"
fi

# Only append to PATH if PNPM_HOME was successfully set by the check above
if [[ -n "$PNPM_HOME" ]]; then
  case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
  esac
fi
# pnpm end

# 4. Portable Bun Setup
# Uses $HOME variable for installation path
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Bun Completions (Uses $HOME variable instead of hardcoded user path)
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# 5. Other Paths (Generally safe if the tool respects $HOME)
export PATH="$HOME/.local/bin":$PATH
PATH=~/.console-ninja/.bin:$PATH

# 6. Starship Prompt (Cross-shell compatible)
eval "$(starship init zsh)"

# --- End: Portable Shell Configuration (.zshrc) ---
