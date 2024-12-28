-- Improves syntax highlighting and parsing using syntax trees
local options = {
  ensure_installed = "all",
  auto_install = true
}

local configs = {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}

return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local plugin = require "nvim-treesitter"
    local config = require "nvim-treesitter.configs"

    plugin.setup(options)
    config.setup(configs)
  end
}
