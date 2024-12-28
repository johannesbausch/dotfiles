-- A modern and customizable status line
local options = {
  sections = {
    lualine_a = {
      {
        "mode",
        separator = {
          left = "",
          right = ""
        }
      }
    },
    lualine_b = {
      {
        "location",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    },
    lualine_c = {
      {
        "branch",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    },
    lualine_x = {
      {
        "filetype",
        color = {
          fg = "ffffff",
          bg = "181825"
        },
        colored = false
      }
    },
    lualine_y = {
      {
        "encoding",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    },
    lualine_z = {
      {
        "filesize",
        color = {
          fg = "ffffff",
          bg = "181825"
        }
      }
    }
  }
}

return {
  "nvim-lualine/lualine.nvim",
  opts = options
}
