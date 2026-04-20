# WezTerm — config summary

Summary of the current `wezterm.lua` configuration.

- Appearance
  - Font: JetBrains Mono (Bold)
  - Font size: 15
  - Color scheme: "rose-pine"
  - Window padding: left=7, top=2, right/bottom=0
  - Tab bar enabled, window decorations set to RESIZE
  - Initial terminal size: 120 cols × 28 rows
  - macOS window blur enabled (macos_window_background_blur = 10)

- Behavior
  - automatically_reload_config = true
  - confirm on close: window_close_confirmation = "AlwaysPrompt"
  - adjust_window_size_when_changing_font_size = false
  - window_background_opacity = 1.0

- macOS-specific fixes and keybindings
  - Ensure Alt/Option acts as ALT modifier:
    send_composed_key_when_left_alt_is_pressed = false
  - CMD-C / CMD-V mapped to CopyTo("Clipboard") and PasteFrom("Clipboard") so copy/paste works even when a command is running
  - CMD-W: close current pane; CMD-SHIFT-W: close current tab

- Utility keybinding
  - CTRL+SHIFT+X: capture current pane scrollback to a temporary file and open it in Neovim in a new tab.

- Selection appearance
  - Clearer mouse selection colors for the rose-pine scheme (`selection_fg` / `selection_bg` overrides)

Links

- WezTerm docs: <https://wezfurlong.org/wezterm/>
- WezTerm GitHub: <https://github.com/wez/wezterm>

How to use

1. Symlink the folder to `~/.config/wezterm`: `ln -s /path/to/configs/wezterm ~/.config/wezterm`
2. Restart WezTerm if needed. Config changes also auto-reload on save.
