-- Makes it easier to select windows in split layouts
local options = {
  hint = "floating-big-letter",
  selection_chars = "1234567890"
}

return {
  "s1n7ax/nvim-window-picker",
  name = "window-picker",
  event = "VeryLazy",
  version = "2.*",
  opts = options
}
