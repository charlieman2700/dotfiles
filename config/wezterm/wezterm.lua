
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
-- config.font = wezterm.font 'JetbrainsMono Nerd Font'
wezterm.font('JetbrainsMono Nerd Font', { weight = 'Bold', italic = true })
-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.font_size=18
config.window_decorations= 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'Ayu Mirage'
config.adjust_window_size_when_changing_font_size = false
--config.window_background_opacity = 0.8




-- and finally, return the configuration to wezterm
-- 
return config

