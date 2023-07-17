-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Theme & Font
config.color_scheme = "tokyonight_night"
config.font = wezterm.font("STACKr Code")
config.font_size = 22
-- config.font_size = 20

-- Transparency & Blur for window
config.window_background_opacity = 0.85
config.macos_window_background_blur = 40

-- Bacground image
-- config.window_background_image = "/Users/shivbhonde/.config/wezterm/assets/boy_looking_eth.jpg"
-- config.window_background_image_hsb = {
-- 	brightness = 0.013,
-- }

-- Window frame decoration
config.window_decorations = "RESIZE"
config.window_frame = {
	font = wezterm.font("STACKr Code"),
}

config.window_padding = {
	left = 8,
	right = 8,
	top = 12,
	bottom = 0,
}

-- Key mappings for splitting panes
config.keys = {
	{ key = "H", mods = "SUPER", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	{ key = "V", mods = "SUPER", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },

	{ key = "h", mods = "SUPER", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	{ key = "j", mods = "SUPER", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	{ key = "k", mods = "SUPER", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	{ key = "l", mods = "SUPER", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
}

-- Tab bar decoration
config.tab_bar_at_bottom = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false

config.colors = {
	tab_bar = {
		background = "rgba(0, 0, 0, 0.01)",
		active_tab = {
			-- use tokyonight colors
			bg_color = "rgba(26, 27, 38, 0.01)",
			fg_color = "#c0caf5",
			intensity = "Half",
		},
	},
}

return config
