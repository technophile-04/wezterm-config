-- Pull in the wezterm API
local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Theme & Font
config.color_scheme = 'tokyonight_night'
config.font = wezterm.font('STACKr Code')
config.font_size = 20 

-- Transparency & Blur for window
config.window_background_opacity = 0.85
config.macos_window_background_blur = 40

-- Window frame decoration
config.window_decorations = "RESIZE"
config.window_frame = {
  font = wezterm.font('STACKr Code'),
}

config.window_padding = {
  left = 8,
  right = 8,
  top = 12,
  bottom = 0,
}

-- Tab bar decoration
config.tab_bar_at_bottom = true
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = false

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

return config
