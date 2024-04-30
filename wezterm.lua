-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.automatically_reload_config = true
config.color_scheme = "Afterglow"
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono", weight = 500 },
	{ family = "FiraCode Nerd Font", weight = 500 },
	{ family = "Martian Mono VF", weight = 300 },
	"Ubuntu",
})
config.font_size = 16
config.harfbuzz_features = { "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08", "calt", "dlig" }
config.hide_tab_bar_if_only_one_tab = true
-- |>

-- and finally, return the configuration to wezterm
return config
