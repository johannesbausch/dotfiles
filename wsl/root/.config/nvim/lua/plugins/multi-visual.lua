return {
  "mg979/vim-visual-multi",
  opts = {
    -- Default configuration (optional, change as needed)
  },
  config = function()
    -- Customize key mappings (Ctrl + g for adding a cursor)
    vim.g.VM_maps = {
      ["<C-g>"] = "add_cursor"  -- Set Ctrl+g to add a cursor
    }
  end
}
