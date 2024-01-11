local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end

config.color_scheme = 'Afterglow'
config.colors = {
    foreground = "#d8d8d8",
    background = "#181818",

    ansi = {
        "#181818", "#ac4242", "#90a959", "#f4bf75", "#6a9fb5", "#aa759f",
        "#75b5aa", "#d8d8d8"
    },

    brights = {
        "#6b6b6b", "#c55555", "#aac474", "#feca88", "#82b8c8", "#c28cb8",
        "#93d3c3", "#f8f8f8"
    }
}

config.automatically_reload_config = true
config.font_size = 14
config.font = wezterm.font_with_fallback {
    {family = "FiraCode Nerd Font", weight = 600}, "MartianMono Nerd Font",
    "Ubuntu"
}
config.harfbuzz_features = {
    'ss01', 'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'calt',
    'dlig'
}
config.enable_tab_bar = false

return config
