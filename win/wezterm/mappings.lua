local wezterm = require "wezterm"

-- Settings table
local M = {}

-- Disable default key and mouse bindings
M.disable_default_key_bindings = true
M.disable_default_mouse_bindings = true
M.mouse_wheel_scrolls_tabs = false

-- Custom key bindings
M.keys = {
  -- Copy and Paste
  { key = "C", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo "Clipboard" }, -- Copy to clipboard
  { key = "V", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom "Clipboard" }, -- Paste from clipboard

  -- Window and Pane Management
  { key = "c", mods = "ALT", action = wezterm.action.QuickSelect }, -- Quick select text
  { key = "-", mods = "ALT", action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } }, -- Split window horizontally
  { key = "|", mods = "ALT", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } }, -- Split window vertically
  { key = "x", mods = "ALT", action = wezterm.action.CloseCurrentPane { confirm = true } }, -- Close current pane with confirmation
  { key = "x", mods = "CTRL|ALT", action = wezterm.action.CloseCurrentTab { confirm = true } }, -- Close current tab with confirmation
  { key = "Q", mods = "ALT|SHIFT", action = wezterm.action.QuitApplication }, -- Quit the application

  -- Tab and Window Selection
  { key = "w", mods = "ALT", action = wezterm.action.PaneSelect { alphabet = "1234567890" } }, -- Select a pane (1-9)
  { key = "p", mods = "ALT", action = wezterm.action.ActivateCommandPalette }, -- Open command palette
  { key = "o", mods = "ALT", action = wezterm.action.ShowTabNavigator }, -- Show tab navigator
  { key = "n", mods = "ALT", action = wezterm.action.SpawnWindow }, -- Spawn a new window
  { key = "t", mods = "ALT", action = wezterm.action.SpawnTab "CurrentPaneDomain" }, -- Spawn a new tab in the current pane

  -- Adjust Pane Size
  { key = "UpArrow", mods = "ALT", action = wezterm.action.AdjustPaneSize { "Up", 2 } }, -- Increase pane size upwards
  { key = "RightArrow", mods = "ALT", action = wezterm.action.AdjustPaneSize { "Right", 2 } }, -- Increase pane size to the right
  { key = "DownArrow", mods = "ALT", action = wezterm.action.AdjustPaneSize { "Down", 2 } }, -- Increase pane size downwards
  { key = "LeftArrow", mods = "ALT", action = wezterm.action.AdjustPaneSize { "Left", 2 } }, -- Increase pane size to the left

  -- Move Tabs and Windows
  { key = "LeftArrow", mods = "CTRL|ALT", action = wezterm.action.MoveTabRelative(-1) }, -- Move tab left
  { key = "RightArrow", mods = "CTRL|ALT", action = wezterm.action.MoveTabRelative(1) }, -- Move tab right

  -- Tab and Window Navigation
  { key = "Tab", mods = "CTRL", action = wezterm.action.ActivateTabRelative(1) }, -- Activate next tab
  { key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.ActivateTabRelative(-1) }, -- Activate previous tab

  -- Other Actions
  { key = "l", mods = "CTRL", action = wezterm.action.ShowLauncherArgs { flags = "LAUNCH_MENU_ITEMS" } }, -- Open launcher menu
  { key = "r", mods = "CTRL", action = wezterm.action.PromptInputLine {
      description = "Enter new name for tab",
      action = wezterm.action_callback(function(window, pane, line)
        if not line then return end
        window:active_tab():set_title(line)
      end)
    }
  }, -- Rename the current tab

  -- Activate Copy Mode
  { key = "X", mods = "ALT|SHIFT", action = wezterm.action.ActivateCopyMode } -- Activate copy mode
}

-- Functions to activate tabs and panes
local activateTab = function(tbl, key, tab)
  table.insert(tbl, { key = tostring(key), mods = "CTRL", action = wezterm.action.ActivateTab(tab) })
end

local activatePane = function(tbl, key, pane)
  table.insert(tbl, { key = tostring(key), mods = "ALT", action = wezterm.action.ActivatePaneByIndex(pane) })
end

-- Bindings for tabs and panes (1-9 and 0)
for i = 1, 9 do
  activateTab(M.keys, i, i - 1)
end
activateTab(M.keys, 0, 9)

for i = 1, 9 do
  activatePane(M.keys, i, i - 1)
end
activatePane(M.keys, 0, 9)

return M

