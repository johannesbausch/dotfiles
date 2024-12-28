-- Define the path where lazy.nvim will be installed (lazy.nvim is a plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone the lazy.nvim repository if it doesn't exist
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end

-- Prepend lazy.nvim to the runtime path (rtp)
vim.opt.rtp:prepend(lazypath)

-- Load general settings and key mappings
require "general/mappings"
require "general/settings"

-- Load individual plugins by their respective modules
local plugin_plenary = require "plugins/plenary"  -- Utility functions for Lua
local plugin_icons = require "plugins/icons"  -- Icons for file type and other UI elements
local plugin_lualine = require "plugins/lualine"  -- Status line plugin
local plugin_dashboard = require "plugins/dashboard"  -- Dashboard screen for Neovim
local plugin_barbar = require "plugins/barbar"  -- Tabline plugin for managing buffers
local plugin_tree = require "plugins/tree"  -- File tree navigation plugin
local plugin_mason = require "plugins/mason"  -- Tool for managing LSP, linters, and formatters
local plugin_mason_lspconfig = require "plugins/mason-lspconfig"  -- Integration with mason for LSP
local plugin_lspconfig = require "plugins/lspconfig"  -- LSP configuration
local plugin_autopairs = require "plugins/autopairs"  -- Auto-closing of pairs (brackets, quotes, etc.)
local plugin_autotag = require "plugins/autotag"  -- Auto-closing HTML/JSX tags
local plugin_treesitter = require "plugins/treesitter"  -- Syntax highlighting and parsing
local plugin_cmp = require "plugins/cmp"  -- Autocompletion plugin
local plugin_lspkind = require "plugins/lspkind"  -- LSP autocompletion icons
local plugin_indentmini = require "plugins/indentmini"  -- Minimal indentation guide
local plugin_gitsigns = require "plugins/gitsigns"  -- Git integration for signs (e.g., changes)
local plugin_telescope = require "plugins/telescope"  -- Fuzzy finder plugin
local plugin_luasnip = require "plugins/luasnip"  -- Snippet plugin
local plugin_colorizer = require "plugins/colorizer"  -- Color highlighting for color codes
local plugin_diffview = require "plugins/diffview"  -- Diff viewer for git
local plugin_window_picker = require "plugins/window-picker"  -- Window picker for managing buffers
local plugin_navic = require "plugins/navic"  -- Navigation context (breadcrumbs)
local plugin_barbecue = require "plugins/barbecue"  -- Status line extension for better context
local plugin_scrollbar = require "plugins/scrollbar"  -- Scrollbar enhancements
local plugin_dressing = require "plugins/dressing"  -- Better UI for pickers (e.g., lists, menus)
local plugin_todo = require "plugins/todo"  -- Plugin for managing todo comments
local plugin_dbee = require "plugins/dbee"  -- Database management plugin
local theme = require "general/theme" -- Load theme

-- Set up all the plugins using lazy.nvim
require("lazy").setup({
  theme,
  plugin_plenary,
  plugin_icons,
  plugin_lualine,
  plugin_dashboard,
  plugin_tree,
  plugin_mason,
  plugin_mason_lspconfig,
  plugin_cmp,
  plugin_lspconfig,
  plugin_autopairs,
  plugin_autotag,
  plugin_treesitter,
  plugin_lspkind,
  plugin_indentmini,
  plugin_gitsigns,
  plugin_telescope,
  plugin_luasnip,
  plugin_colorizer,
  plugin_window_picker,
  plugin_diffview,
  plugin_barbar,
  plugin_navic,
  plugin_barbecue,
  plugin_scrollbar,
  plugin_dressing,
  plugin_todo,
  plugin_dbee
})

-- Load individual LSP (Language Server Protocol) configurations
require "lsp/angular"
require "lsp/bash"
require "lsp/c"
require "lsp/css"
require "lsp/emmet"
require "lsp/eslint"
require "lsp/groovy"
require "lsp/html"
require "lsp/java"
require "lsp/json"
require "lsp/lua"
require "lsp/markdown"
require "lsp/python"
require "lsp/rust"
require "lsp/tailwind"
require "lsp/typescript"
require "lsp/vue"
require "lsp/stylelint"

-- Set the colorscheme (after the setup)
vim.cmd.colorscheme('github_dark')  -- Use 'github_dark' or your preferred theme 

-- Customize the appearance of indentation lines
vim.cmd.highlight("IndentLine guifg=#313244")  -- Indentation lines color
vim.cmd.highlight("IndentLineCurrent guifg=#585b70")  -- Current line indentation color

-- Customize the "EndOfBuffer" highlight color
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#45475a" })

