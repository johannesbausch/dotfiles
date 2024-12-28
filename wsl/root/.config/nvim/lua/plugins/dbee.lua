-- Define options for the `nvim-dbee` plugin
local options = {
  -- Set the theme to dark mode
  theme = "dark",

  -- Enable history tracking
  history = true 
}

return {
  -- Plugin definition for nvim-dbee
  "kndndrj/nvim-dbee", 

  -- Dependencies required for this plugin to work
  dependencies = {
    -- UI component library required by nvim-dbee
    "MunifTanjim/nui.nvim",
  },

  -- Define the build process for the plugin
  build = function()
    -- Install the `dbee` plugin
    require("dbee").install()
  end,

  -- Pass the defined options to the plugin
  opts = options,

  -- Configuration function that sets up `nvim-dbee` with the provided options
  config = function(_, opts)
    -- Setup `nvim-dbee` with the provided configuration options
    require("dbee").setup(opts)
  end,
}

