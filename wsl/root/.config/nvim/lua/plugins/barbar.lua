-- Provides an advanced tab bar for managing open buffers
local options = {
  animation = true,
  tabpages = true,
  clickable = false,
  focus_on_close = "previous",
  maximum_padding = 1,
  minimum_padding = 1,
  icons = {
    buffer_index = true,
    button = ""
  }
}

return {
  "romgrk/barbar.nvim",
  opts = options
}
