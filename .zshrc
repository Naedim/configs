# Portable Shell Configuration (.zshrc) ---

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
export PATH="$HOME/.local/bin:$PATH"
#nvim import
export PATH="/opt/nvim-linux-x86_64/bin:$PATH"

# 6. Starship Prompt (Cross-shell compatible)
eval "$(starship init zsh)"
 
alias cdwin="cd /mnt/c/Users/DamienNoel/"
alias lg='lazygit' # =========================================================
# Universal Zsh keybindings for WezTerm
# Works on macOS and Windows (WSL)
# Prevents escape junk like "D5;"
# =========================================================

# Use standard emacs-style keybindings
bindkey -e

# ---------------------------------------------------------
# Basic arrow keys
# ---------------------------------------------------------
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history
bindkey '^[[C' forward-char
bindkey '^[[D' backward-char

# ---------------------------------------------------------
# Ctrl + Arrow → move by word
# (xterm / WezTerm standard)
# ---------------------------------------------------------
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5A' beginning-of-line
bindkey '^[[1;5B' end-of-line

# Fallback Ctrl+Arrow variants (Windows/WSL)
bindkey '^[[5C' forward-word
bindkey '^[[5D' backward-word

# ---------------------------------------------------------
# Alt / Option + Arrow → move by word
# (Alt sends ESC prefix)
# ---------------------------------------------------------
bindkey '^[^[[C' forward-word
bindkey '^[^[[D' backward-word

# ---------------------------------------------------------
# Cmd + Arrow / Home / End
# (macOS Cmd+Arrow often maps to Home/End)
# ---------------------------------------------------------
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[7~' beginning-of-line
bindkey '^[[8~' end-of-line

# ---------------------------------------------------------
# Word deletion
# ---------------------------------------------------------
bindkey '^W' backward-kill-word      # Ctrl + W
bindkey '^[d' kill-word              # Alt + D
bindkey '^[^H' backward-kill-word    # Alt + Backspace

# ---------------------------------------------------------
# Line deletion
# ---------------------------------------------------------
bindkey '^U' backward-kill-line      # Ctrl + U
bindkey '^K' kill-line               # Ctrl + K

# ---------------------------------------------------------
# History search (Ctrl + Up / Down)
# ---------------------------------------------------------
bindkey '^[[1;5A' history-search-backward
bindkey '^[[1;5B' history-search-forward

# --- End: Portable Shell Configuration

