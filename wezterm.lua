-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'tokyonight_night'
config.font = wezterm.font('STACKr Code')
config.font_size = 20 
config.window_background_opacity = 0.80
config.window_decorations = "RESIZE"
config.window_frame = {
  font = wezterm.font('STACKr Code'),
}
config.tab_bar_at_bottom = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false

config.window_padding = {
  left = 8,
  right = 8,
  top = 12,
  bottom = 0,
}

config.colors = {
  tab_bar = {
    background = 'rgba(0, 0, 0, 0.01)',
    active_tab = {
      -- use tokyonight colors
      bg_color = 'rgba(26, 27, 38, 0.01)',
      fg_color = '#c0caf5',
      intensity = 'Half',
    },
  }
}

-- and finally, return the configuration to wezterm
return config
