local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 20
config.line_height = 1.0
config.font = wezterm.font("SF Mono")

local function get_theme()
	if wezterm.gui then
		return wezterm.gui.get_appearance() == "Dark" and "catppuccin-mocha" or "catppuccin-latte"
	end

	return "tokyonight_night"
end

config.color_scheme = get_theme()

config.colors = {
	cursor_bg = "#7aa2f7",
	cursor_border = "#7aa2f7",
}

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

config.keys = {
	{
		key = "d",
		mods = "CMD",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "c",
		mods = "CMD",
		action = wezterm.action.SendString("clear\n"),
	},
	{
		key = "]",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "]",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "[",
		mods = "CMD",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "[",
		mods = "CMD|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{ key = "h", mods = "CMD", action = wezterm.action.SendKey({ key = "LeftArrow" }) },
	{ key = "j", mods = "CMD", action = wezterm.action.SendKey({ key = "DownArrow" }) },
	{ key = "k", mods = "CMD", action = wezterm.action.SendKey({ key = "UpArrow" }) },
	{ key = "l", mods = "CMD", action = wezterm.action.SendKey({ key = "RightArrow" }) },
}

return config
