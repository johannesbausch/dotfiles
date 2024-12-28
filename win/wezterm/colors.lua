local M = {}

M.color_scheme = "GitHub"
M.colors = {
  cursor_bg = "#ffffff",  -- CodeMirror cursor foreground
  cursor_border = "#ffffff",  -- CodeMirror cursor border
  cursor_fg = "#ffffff",  -- CodeMirror cursor foreground
  tab_bar = {
    active_tab = {
      bg_color = "#010409",  -- GitHub page header background color
      fg_color = "#f0f6fc"   -- GitHub header logo color
    },
    inactive_tab = {
      bg_color = "rgba(21, 27, 35, 0.95)",  -- GitHub header background with slight opacity
      fg_color = "#b7bdc8"  -- GitHub syntax default color
    }
  }
}

return M

