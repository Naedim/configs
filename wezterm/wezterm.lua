local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Configuration for the terminal appearance and size:
config.initial_cols = 120
config.initial_rows = 28
config.font_size = 15
config.color_scheme = "rose-pine"
config.window_background_opacity = 1.0
config.macos_window_background_blur = 10

-- ==========================================================
-- 🛠️ ADDITIONS TO FIX ALT KEY AND MOUSE SELECTION 🛠️
-- ==========================================================

-- 1. FIX ALT/OPTION KEY ON MACOS:
-- This ensures the left Option (⌥) key is used as the ALT modifier
-- for shortcuts, instead of generating special characters.
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

-- 2. ADD MACOS-STYLE COPY/PASTE KEYBINDINGS:
-- This allows you to use CMD-C and CMD-V for copying and pasting
-- selected text, even when a command is running.
config.keys = {
	-- CMD-C to copy selected text to the clipboard
	{
		key = "c",
		mods = "CMD",
		action = wezterm.action.CopyTo("Clipboard"),
	},
	-- CMD-V to paste from the clipboard
	{
		key = "v",
		mods = "CMD",
		action = wezterm.action.PasteFrom("Clipboard"),
	},
}
return config
