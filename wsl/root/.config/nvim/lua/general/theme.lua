-- Options to configure the appearance and behavior of the color scheme.
local options = {
  -- Set the flavor of the theme. "mocha" is the darkest variant.
  flavour = "mocha",

  -- Allow italic text in the theme. Set to false to disable italics.
  no_italic = false,

  -- Disable bold text in the theme.
  no_bold = true,

  -- Disable underlined text in the theme.
  no_underline = true,

  -- Enable or configure specific integrations with plugins.
  integrations = {
    -- Enable the integration with Barbar (tabline plugin).
    barbar = true,

    -- Configure Barbecue (status line plugin) integration.
    barbecue = {
      -- Dim the context information in the status line.
      dim_context = true
    },

    -- Enable the integration with nvim-cmp (completion plugin).
    cmp = true,

    -- Enable the integration with NeoTree (file explorer plugin).
    neotree = true,

    -- Enable integration with Treesitter for better syntax highlighting.
    treesitter = true,

    -- Enable the integration with Dashboard (start screen plugin).
    dashboard = true,

    -- Enable the integration with Mason (LSP installer plugin).
    mason = true,

    -- Configure the integration with Indent Blankline (indentation guides plugin).
    indent_blankline = {
      -- Disable indentation guides.
      enabled = false
    },

    -- Configure Diffview (Git diff plugin) integration.
    diffview = {
      -- Enable Diffview integration with the theme.
      enabled = true
    },

    -- Configure Telescope (fuzzy finder plugin) integration.
    telescope = {
      -- Enable Telescope integration with the theme.
      enabled = true
    },

    -- Configure Window Picker (window selection plugin) integration.
    window_picker = {
      -- Enable Window Picker integration with the theme.
      enabled = true
    },

    -- Configure the integration with the native LSP client.
    native_lsp = {
      -- Enable the native LSP integration.
      enabled = true,

      -- Configure underlines for diagnostics.
      underlines = {
        -- Use undercurl for errors.
        errors = {
          "undercurl"
        },
        -- Use undercurl for hints.
        hints = {
          "undercurl"
        },
        -- Use undercurl for warnings.
        warnings = {
          "undercurl"
        },
        -- Use undercurl for informational messages.
        information = {
          "undercurl"
        },
        -- Use undercurl for OK messages (if applicable).
        ok = {
          "undercurl"
        }
      },

      -- Configure inlay hints (e.g., inline annotations).
      inlay_hints = {
        -- Disable background for inlay hints.
        background = false
      }
    }
  }
}

-- Configuration for the GitHub theme, using the "dark" variant.
return {
  -- The name of the plugin repository for the GitHub theme.
  "projekt0n/github-nvim-theme",

  -- The name used for this theme in the configuration.
  name = "github-theme",

  -- Priority to ensure the theme loads before others.
  priority = 1000,

  -- Options to configure the GitHub theme.
  opts = {
    -- No need to specify 'theme_style' anymore, it has been removed.
    integrations = {
      -- Enable integration with other plugins if necessary.
      cmp = true,          -- Example: Enable integration with nvim-cmp (completion plugin).
      telescope = true,    -- Example: Enable integration with Telescope (fuzzy finder plugin).
      -- Add additional plugin integrations here if needed.
    }
  },

  -- Set the colorscheme explicitly after setup.
  config = function(_, opts)
    -- Apply the theme
    require('github-theme').setup(opts)
 end
}

