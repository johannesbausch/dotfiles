local wezterm = require "wezterm"

-- On GUI startup
wezterm.on("gui-startup", function()
  -- Create a new window, tab, and pane
  local tab, pane, window = wezterm.mux.spawn_window{}

  -- Maximize the window
  window:gui_window():maximize()
end)

