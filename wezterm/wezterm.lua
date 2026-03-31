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

-- Make mouse selection clearly visible (rose-pine's default is hard to see)
config.colors = {
	selection_fg = "#e0def4", -- rose-pine text
	selection_bg = "#403d52", -- rose-pine highlight medium
}

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
	-- CMD-W to close the current pane (closes tab if it's the last pane)
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	-- CMD-SHIFT-W to close the current tab and all its panes
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = false }),
	},
	-- CTRL+SHIFT+X: open current pane scrollback in a temporary nvim tab
	{
		key = "x",
		mods = "CTRL|SHIFT",
		action = wezterm.action_callback(function(window, pane)
			local dims = pane:get_dimensions()
			local scrollback = pane:get_lines_as_text(dims.scrollback_rows)
			local tmp = os.tmpname() .. ".log"
			local f = assert(io.open(tmp, "w"))
			f:write(scrollback)
			f:close()
			window:perform_action(
				wezterm.action.SpawnCommandInNewTab({
					args = { "nvim", tmp },
				}),
				pane
			)
		end),
	},
}

return config
