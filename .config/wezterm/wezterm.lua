local wezterm = require 'wezterm'
return {
  font = wezterm.font {
    family = 'DaddyTimeMono Nerd Font Mono',
  },
  font_size = 14.0,
  color_scheme = "Sex Colors (terminal.sexy)",
  keys = {
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
}
