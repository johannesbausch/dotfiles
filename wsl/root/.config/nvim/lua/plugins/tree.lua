-- Provides a file tree navigation sidebar
local options = {
  window = {
    position = "right",
    popup = {
      border = "single"
    }
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = false
    },
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true
    }
  },
  buffers = {
    follow_current_file = {
      enabled = true,
      leave_dirs_open = true
    }
  }
}

return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim"
  },
  branch = "v3.x",
  opts = options
}
