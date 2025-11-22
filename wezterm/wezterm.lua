local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_cursor_style = "SteadyBar"
config.automatically_reload_config = true
config.window_close_confirmation = "NeverPrompt"
config.adjust_window_size_when_changing_font_size = false
config.window_decorations = "RESIZE"
-- config.check_for_updates = false
-- config.use_fancy_tab_bar = false
-- config.tab_bar_at_bottom = false
config.font_size = 12.5
config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.enable_tab_bar = true
config.window_padding = {
	left = 7,
	right = 0,
	top = 2,
	bottom = 0,
}
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
