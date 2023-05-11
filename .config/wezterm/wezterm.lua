local wezterm = require 'wezterm'
return {
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  window_background_opacity = 1.0,
  font = wezterm.font {
    family = 'DaddyTimeMono Nerd Font',
  },
  font_size = 12.0,
  color_scheme = "Sex Colors (terminal.sexy)",
  colors = {
    tab_bar = {
      background = '#252525',
      active_tab = {
        bg_color = '#000000',
        fg_color = '#dbdcdc',
        intensity = 'Bold',
      },
      inactive_tab = {
        bg_color = '#252525',
        fg_color = '#dbdcdc',
      },
      inactive_tab_hover = {
        bg_color = '#454545',
        fg_color = '#dbdcdc',
        italic = false,
      },
      new_tab = {
        bg_color = '#435e87',
        fg_color = '#dbdcdc',
      },
      new_tab_hover = {
        bg_color = '#789ec6',
        fg_color = '#dbdcdc',
      },
    },
  },
  keys = {
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
}
