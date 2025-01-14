return {
  "anhpt379/nvim-cursorword",
  opts = {
    cursorword_highlight = true,  -- Enable cursorword highlighting (default is true)
    highlight_group = "CursorWord", -- Highlight group for the cursorword
  },
  config = function()
    -- Optionally customize the appearance of the CursorWord highlight
    vim.cmd('highlight CursorWord ctermbg=gray guibg=gray') -- Customize with any color you prefer
  end
}

