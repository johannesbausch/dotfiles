-- Highlights TODOs, FIXMEs, and other comments in the code
local options = {
  signs = false,
  gui_style = {
    bg = "NONE"
  },
  hightlight = {
    keyword = "bg",
    after = ""
  }
}

return {
  "folke/todo-comments.nvim",
  opts = options
}

