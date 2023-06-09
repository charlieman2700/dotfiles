
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end
-- JetbrainsMono Nerd Font
-- This is where you actually apply your config choices
-- config.font = wezterm.font 'JetbrainsMono Nerd Font'
config.font = wezterm.font('ComicCodeLigatures Nerd Font' )
-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.font_size=14
config.line_height=0.8
-- config.window_decorations= 'RESIZE'
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'Ayu Mirage'
config.adjust_window_size_when_changing_font_size = false
--config.window_background_opacity = 0.8




-- and finally, return the configuration to wezterm
-- 
return config

