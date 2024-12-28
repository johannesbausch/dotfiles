-- Visualizes Git diffs for files and commits
local options = {
  show_help_hints = false,
  file_panel = {
    tree_options = {
      flatten_dirs = false
    },
    win_config = {
      position = "right",
      width = 40
    }
  }
}

return {
  "sindrets/diffview.nvim",
  opts = options
}
