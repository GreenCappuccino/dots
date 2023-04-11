local wezterm = require 'wezterm'
return {
  font = wezterm.font {
    family = 'DaddyTimeMono Nerd Font',
  },
  font_size = 12.0,
  color_scheme = "Sex Colors (terminal.sexy)",
  keys = {
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
}
