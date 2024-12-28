local M = {}

M.use_fancy_tab_bar = true -- Enables a stylish tab bar with advanced features
M.window_decorations = "INTEGRATED_BUTTONS" -- Adds window controls (minimize, maximize, close) to the title bar
M.show_close_tab_button_in_tabs = false -- Hides the close button on individual tabs
M.tab_bar_at_bottom = false -- Keeps the tab bar at the top of the window
M.window_padding = { -- Sets the padding (space) around the content inside the window
  left = 0,  -- No left padding
  right = 0, -- No right padding
  top = 0,   -- No top padding
  bottom = 0 -- No bottom padding
}

return M

