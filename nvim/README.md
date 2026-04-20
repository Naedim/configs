# Neovim

LazyVim-based Neovim config with a small set of workflow overrides.

## Summary

- `lazy.nvim` manages plugins.
- `onedark` (`darker`) is the active theme.
- Absolute line numbers, 4-space indentation, and spaces instead of tabs.
- `snacks.nvim` shows hidden and ignored files in pickers and explorer.
- `<leader>co` opens LSP symbols filtered to functions and methods.
- `trouble.nvim` symbols view opens on the right.
- `scratch.nvim` is available for quick notes with `<M-C-n>`, `<M-C-o>`, and `<leader>fs`.
- GitHub Copilot and Copilot Chat are enabled.
- `vim-visual-multi` is installed for multi-cursor editing.
- Java support uses `nvim-jdtls` and includes `src/integration-test/java`.
- Bufferline is always visible.
- LazyVim inlay hints are disabled.

## Enabled extras

- Copilot / Copilot Chat
- Astro
- Go
- Java
- JSON
- Kotlin
- Markdown
- TOML
- TypeScript
- Testing
- Debugging
- Dotfiles

## Setup

```sh
ln -s ~/configs/nvim ~/.config/nvim
```
