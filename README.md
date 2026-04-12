# configs — Damien's dotfiles

This repository contains personal configurations for multiple command-line and GUI tools. Below is a concise list of the configs included, what they configure, and links to official documentation.

Tools

- Neovim (LazyVim)
  - Purpose: Neovim configuration tailored for LazyVim (plugins, settings, and plugin lockfiles).
  - Docs: <https://github.com/LazyVim/LazyVim>
  - Neovim: <https://neovim.io>
  - Quick use: ln -s /path/to/configs/nvim ~/.config/nvim

- Starship (prompt)
  - Purpose: Fast, minimal shell prompt configuration (starship.toml).
  - Docs: <https://github.com/starship/starship>
  - Website: <https://starship.rs>
  - Quick use: ln -s /path/to/configs/starship/starship.toml ~/.config/starship.toml

- WezTerm (terminal)
  - Purpose: WezTerm terminal emulator config (wezterm.lua).
  - Docs: <https://github.com/wez/wezterm>
  - Website: <https://wezfurlong.org/wezterm/>
  - Quick use: ln -s /path/to/configs/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

- zsh
  - Purpose: zsh startup files (zshrc and zshrc.d).
  - Docs: <https://www.zsh.org/>
  - Quick use: ln -s /path/to/configs/zsh/zshrc ~/.zshrc && ln -s /path/to/configs/zsh/zshrc.d ~/.zshrc.d

- sketchybar (macOS) (Work in progress)
  - Purpose: macOS status bar setup and plugins (sketchybarrc and plugin files).
  - Docs/GitHub: <https://github.com/felixkratz/SketchyBar>
  - Quick use: ln -s /path/to/configs/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarrc

- Copilot-related configs
  - Purpose: Copilot/automation helper config and instructions (see copilot/ directory).
  - Docs: <https://docs.github.com/en/copilot>
  - CLI (if used): <https://github.com/github/copilot-cli>
  - Quick use: follow copilot/copilot-instructions.md in this repo for setup details.

- aerospace (user-specific)
  - Purpose: Contains aerospace.toml — marked as a user-specific or project-specific config with no public doc link. If this should map to a public project, provide details.
  - Quick use: treat as a project config (example: ln -s /path/to/configs/aerospace.toml ~/.config/aerospace.toml)

How to use these configs (example)

1. Clone this repo to ~/work/configs (or a path you prefer).
2. Create symlinks from the config files to your $XDG or home locations, e.g.:
   - ln -s ~/work/configs/nvim ~/.config/nvim
   - ln -s ~/work/configs/starship/starship.toml ~/.config/starship.toml
   - ln -s ~/work/configs/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
   - ln -s ~/work/configs/zsh/zshrc ~/.zshrc
3. Notes:
   - Neovim: this config expects LazyVim. Install LazyVim first (see LazyVim docs) and then use the nvim folder here as your LazyVim config.
   - macOS: sketchybar is macOS-only; ensure you have the binary installed before using the sketchybar config.

If any of these entries need a more detailed description or a different link (for example the "aerospace" config), tell me and I will update the README.
