# configs — dotfiles

Configuration files for command-line and GUI tools, with quick setup examples and links to upstream docs.

The tooling is oriented around a minimal coding workflow with agentic assistance, with a focus on Neovim as the main editor and a set of complementary tools for terminal, shell, and macOS status bar configuration. Heavy use of git worktrees for parallel feature developments

Tools:

- Neovim (LazyVim)
  - Purpose: code editing with low ressource requirements.
  - Docs: <https://github.com/LazyVim/LazyVim>
  - Neovim: <https://neovim.io>
  - Quick use: ln -s /path/to/configs/nvim ~/.config/nvim

- Starship (prompt)
  - Purpose: Fast, minimal shell prompt configuration (starship.toml). (work in progress)
  - Docs: <https://github.com/starship/starship>
  - Website: <https://starship.rs>
  - Quick use: ln -s /path/to/configs/starship/starship.toml ~/.config/starship.toml

- WezTerm (terminal multiplexer that I use heavily for my worktree-oriented workflow using neovim + github copilot CLI)
  - Purpose: WezTerm terminal emulator config (wezterm.lua).
  - Docs: <https://github.com/wez/wezterm>
  - Website: <https://wezfurlong.org/wezterm/>
  - Quick use: ln -s /path/to/configs/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

- zsh
  - Purpose: zsh startup files (zshrc and zshrc.d).
  - Docs: <https://www.zsh.org/>
  - Quick use: ln -s /path/to/configs/zsh/zshrc ~/.zshrc && ln -s /path/to/configs/zsh/zshrc.d ~/.zshrc.d

- sketchybar (macOS) (Work in progress)
  - Purpose: macOS status bar setup and plugins + better UX with aerospace window tilling manager (sketchybarrc and plugin files).
  - Docs/GitHub: <https://github.com/felixkratz/SketchyBar>
  - Quick use: ln -s /path/to/configs/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarrc

- Copilot-related configs
  - Purpose: agentic coding config and instructions (see copilot/ directory).
  - Docs: <https://docs.github.com/en/copilot>
  - CLI (if used): <https://github.com/github/copilot-cli>
  - Quick use: follow copilot/copilot-instructions.md in this repo for setup details.

- aerospace (windows tiling manager)
  - Purpose: AeroSpace window manager configuration, override the native space system of macos (`aerospace.toml`).
  - Quick use: treat as a project config (example: ln -s /path/to/configs/aerospace.toml ~/.config/aerospace.toml)

- yazi (file manager)
  - Purpose: yazi terminal file manager config. Configures the edit opener so that nvim always opens with CWD set to the selected directory (or the parent directory of the selected file).
  - Docs: <https://yazi-rs.github.io>
  - Quick use: ln -s /path/to/configs/yazi ~/.config/yazi

How to use these configs (example)

1. Clone this repo to ~/configs (or a path you prefer).
2. Create symlinks from the config files to your $XDG or home locations, e.g.:
   - ln -s ~/configs/nvim ~/.config/nvim
   - ln -s ~/configs/starship/starship.toml ~/.config/starship.toml
   - ln -s ~/configs/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
   - ln -s ~/configs/zsh/zshrc ~/.zshrc
   - ln -s ~/configs/yazi ~/.config/yazi
3. Notes:
   - Neovim: this config expects LazyVim. Install LazyVim first (see LazyVim docs) and then use the nvim folder here as your LazyVim config.
   - macOS: sketchybar is macOS-only; ensure you have the binary installed before using the sketchybar config.
